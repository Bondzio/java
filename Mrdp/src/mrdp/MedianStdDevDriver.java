package mrdp;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.util.GenericOptionsParser;

import mrdp.utils.HourLengthTuple;
import mrdp.utils.MRDPUtils;

public class MedianStdDevDriver {

	
	public static class SOMinMaxCountMapper extends Mapper<Object, Text, Text, HourLengthTuple> {
		// Our output key and value Writables
		private Text outUserId = new Text();
		private HourLengthTuple outTuple = new HourLengthTuple();

		// This object will format the creation date string into a Date object
		private final static SimpleDateFormat frmt = new SimpleDateFormat("HH");

		@Override
		public void map(Object key, Text value, Context context) throws IOException, InterruptedException {

			Map<String, String> parsed = MRDPUtils.transformXmlToMap(value.toString());
			if (parsed.get("CreationDate") != null || parsed.get("UserId") != null || parsed.get("Text") != null) {
				String strDate = parsed.get("CreationDate");
				String userId = parsed.get("UserId");
				Long textLength = (long) 0;
				if (parsed.get("Text") == null) {
					return;
				} else
					textLength = (long) parsed.get("Text").length();
				try {
					Date creationDate = frmt.parse(strDate);

					outTuple.setTime(creationDate);
					outTuple.setLength(0);
					if(userId !=null) outUserId.set(userId);
					if(outUserId !=null) context.write(outUserId, outTuple);
				} catch (ParseException e) {}
			}
		}
	}

	public static class SOMinMaxCountReducer extends Reducer<Text, HourLengthTuple, Text, HourLengthTuple> {
		private HourLengthTuple result = new HourLengthTuple();
		
		@Override
		public void reduce(Text key, Iterable<HourLengthTuple> values, Context context)				throws IOException, InterruptedException {

			// Initialize our result
			result.setTime(null);
			result.setLength(0);
			long sum = 0;

			for (HourLengthTuple val : values) {

				if (result.getTime() == null || result.getTime()== val.getTime() ) {
					sum += val.getLength();
				}
				result.setTime(val.getTime());
				result.setLength(sum);
				context.write(key, result);
			}
		}
	}

	public static void main(String[] args) throws Exception {
		Configuration conf = new Configuration();

		conf.set("fs.default.name", "hdfs://192.168.56.108:9000");
		conf.set("mapred.job.tracker", "192.168.56.108:9001");
		conf.set("mapred.jar", "C:/dev/workspace/mr.jar"); 

		String[] otherArgs = new GenericOptionsParser(conf, args).getRemainingArgs();

		if (otherArgs.length != 2) {
			System.err.println("Usage: MinMaxCountDriver <in> <out>");
			System.exit(2);
		}
 
		Job job = new Job(conf, "StackOverflow Comment Date Min Max Count");
		job.setJarByClass(MedianStdDevDriver.class);
		job.setMapperClass(SOMinMaxCountMapper.class);
		job.setCombinerClass(SOMinMaxCountReducer.class);
		job.setReducerClass(SOMinMaxCountReducer.class);
		job.setOutputKeyClass(Text.class);
		job.setOutputValueClass(HourLengthTuple.class);
		FileInputFormat.addInputPath(job, new Path(otherArgs[0]));
		FileOutputFormat.setOutputPath(job, new Path(otherArgs[1]));
		System.exit(job.waitForCompletion(true) ? 0 : 1);
	}

}