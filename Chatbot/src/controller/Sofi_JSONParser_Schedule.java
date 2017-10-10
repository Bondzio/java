package controller;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
public class Sofi_JSONParser_Schedule {
	
	public void do_parsing(String rawData) throws ParseException{
	
		
		JSONParser jsonParser			 = new JSONParser();
		JSONObject object  				= (JSONObject) jsonParser.parse(rawData);
		JSONObject monthlyScheduleModel = (JSONObject) object.get("monthlyScheduleModel");
		JSONObject dailyScheduleListMap = (JSONObject) monthlyScheduleModel.get("dailyScheduleListMap");
		
		String yearMonth=(String) monthlyScheduleModel.get("year") + monthlyScheduleModel.get("month");
		for (int k=1;k<=30;k++){ 
			String date = yearMonth + (k >=10 ? k : "0"+k);	
			JSONArray schDetail = (JSONArray) dailyScheduleListMap.get(date);
			for (int i=0; i<schDetail.size();i++){
				JSONObject detail = (JSONObject) schDetail.get(i);
				System.out.print("DATE : "+ date + " NO :" + (i+1) + "\t");
				System.out.print(detail.get("homeTeamName") + "\t\t\t");
				System.out.print(detail.get("awayTeamName") + "\t\t\t");
				System.out.print(detail.get("homeTeamScore") + "\t\t");
				System.out.print(detail.get("awayTeamScore") + "\t\t");
				System.out.print(detail.get("gameStartTime") + "\t\t");
				System.out.println (detail.get("stadium"));
			}
		}
	}
}

