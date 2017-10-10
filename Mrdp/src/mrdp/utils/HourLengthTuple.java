package mrdp.utils;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.hadoop.io.Writable;

public class HourLengthTuple implements Writable {
	private Date time = new Date();
	private long length =0;
	
	private final static SimpleDateFormat frmt = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
	
	@Override
	public void write(DataOutput out) throws IOException {
		out.writeLong(time.getTime());
		out.writeLong(length);
		
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public long getLength() {
		return length;
	}
	public void setLength(long length) {
		this.length = length;
	}
	@Override
	public void readFields(DataInput in) throws IOException {
		time = new Date(in.readLong());
		length = in.readLong();
		
	}
	@Override
	public String toString() {
		return "HourLengthTuple [time=" + frmt.format(time) + ", length=" + length + "]";
	}
	
}
