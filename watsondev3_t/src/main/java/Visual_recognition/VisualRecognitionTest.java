package Visual_recognition;

import com.ibm.watson.developer_cloud.visual_recognition.v3.VisualRecognition;
import com.ibm.watson.developer_cloud.visual_recognition.v3.model.ClassifyImagesOptions;
import com.ibm.watson.developer_cloud.visual_recognition.v3.model.VisualClassification;

public class VisualRecognitionTest {
public static void main(String[] args) {
	
	VisualRecognition service = new VisualRecognition(VisualRecognition.VERSION_DATE_2016_05_20);
	service.setApiKey("ef63ef96901b71ffc71b62b7278e896a9e05dfad");

	System.out.println("Classify an image");
	/*ClassifyImagesOptions options = new ClassifyImagesOptions.Builder()
	    .images(new File("C:/dev/image/t.jpg"))
	    .build();*/
	

	ClassifyImagesOptions options = new ClassifyImagesOptions.Builder()
		    .url("http://image.hankookilbo.com/i.aspx?Guid=b348bb9273ec48fdb5aa3fcaa0d91a9c&Month=20150416&size=640")
		    .build();
	
	
	
	VisualClassification result = service.classify(options).execute();
	System.out.println(result);
	
	
	
}
}
