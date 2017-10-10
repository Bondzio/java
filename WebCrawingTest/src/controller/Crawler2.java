package controller;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

public class Crawler2 {
	
	private String current_Line;
	private String rawData=null;
	private String urlstr=null;
	
	public void sofi_WebReader(){
		try {
			URL url = new URL(urlstr);		
			BufferedReader bf = new BufferedReader(new InputStreamReader(url.openStream()));
			while((current_Line=bf.readLine())!=null){
			   	  System.out.println(current_Line); 
		    } 
			bf.close();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public final void setUrlstr(String urlstr) {
		this.urlstr = urlstr;
	} 
	
}