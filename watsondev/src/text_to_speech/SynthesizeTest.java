package text_to_speech;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.AudioFormat;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.Voice;
import com.ibm.watson.developer_cloud.text_to_speech.v1.util.WaveUtils;

public class SynthesizeTest {
	public static void main(String[] args) {
		TextToSpeech service = new TextToSpeech("21de6d7b-21ba-4d7c-ac61-2121c7c3599e","XjJhaP65cNW4"); //By Constructor, it may be instanced as it looks.

		try {
			  String text = "There are serious legal and constitutional issues as well. Foreign leaders in Europe, Asia, and across the world should not have more to say with respect to the US economy than our own citizens and their elected representatives. Thus, our withdrawal from the agreement represents a reassertion of America’s sovereignty. [Applause.] Our constitution is unique among all the nations of the world, and it is my highest obligation and greatest honor to protect it. And I will.";
			  InputStream stream = service.synthesize(text, Voice.GB_KATE, AudioFormat.WAV).execute();
			  InputStream in = WaveUtils.reWriteWaveHeader(stream);
			  OutputStream out = new FileOutputStream("hello_world.wav");
			  byte[] buffer = new byte[1024];
			  int length;
			  while ((length = in.read(buffer)) > 0) {
			    out.write(buffer, 0, length);
			  }
			  out.close();
			  in.close();
			  stream.close();
		}
			catch (Exception e) {
			  e.printStackTrace();
		}
	}
}
