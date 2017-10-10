package controller;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import model.TeamVO;

public class Sofi_JSONParser {
	
	public List<TeamVO> do_parsing (String rawData){
	
		List <TeamVO> list = new ArrayList<>() ;
		try {
        JSONParser jsonParser = new JSONParser();
        JSONObject jsonObject = (JSONObject) jsonParser.parse(rawData);
        JSONArray teaminfoArray = (JSONArray) jsonObject.get("regularTeamRecordList");
       //{"regularTeamRecordList":[{"teamName":"첼시 FC","gainGoal":85,"gameCount":38,"lastResult":"5승 0무 0패","league":100,"gainPoint":93,"teamCode":"4","loseGoal":33,"foul":395,"lost":5,"won":30,"goalGap":52,"teamRankingGroup":"champsLeague","rank":1,"assist":null,"drawn":3},{"teamName":"토트넘 핫스퍼 FC","gainGoal":86,"gameCount":38,"lastResult":"4승 0무 1패","league":100,"gainPoint":86,"teamCode":"19","loseGoal":26,"foul":432,"lost":4,"won":26,"goalGap":60,"teamRankingGroup":"champsLeague","rank":2,"assist":null,"drawn":8},{"teamName":"맨체스터 시티 FC","gainGoal":80,"gameCount":38,"lastResult":"4승 1무 0패","league":100,"gainPoint":78,"teamCode":"11","loseGoal":39,"foul":395,"lost":6,"won":23,"goalGap":41,"teamRankingGroup":"champsLeague","rank":3,"assist":null,"drawn":9},{"teamName":"리버풀 FC","gainGoal":78,"gameCount":38,"lastResult":"3승 1무 1패","league":100,"gainPoint":76,"teamCode":"9","loseGoal":42,"foul":396,"lost":6,"won":22,"goalGap":36,"teamRankingGroup":"chamsLeagueQualifiers","rank":4,"assist":null,"drawn":10},{"teamName":"아스널 FC","gainGoal":77,"gameCount":38,"lastResult":"5승 0무 0패","league":100,"gainPoint":75,"teamCode":"1006","loseGoal":44,"foul":399,"lost":9,"won":23,"goalGap":33,"teamRankingGroup":"europaLeague","rank":5,"assist":null,"drawn":6},{"teamName":"맨체스터 유나이티드 FC","gainGoal":54,"gameCount":38,"lastResult":"1승 2무 2패","league":100,"gainPoint":69,"teamCode":"12","loseGoal":29,"foul":496,"lost":5,"won":18,"goalGap":25,"teamRankingGroup":"normal","rank":6,"assist":null,"drawn":15},{"teamName":"에버턴 FC","gainGoal":62,"gameCount":38,"lastResult":"1승 1무 3패","league":100,"gainPoint":61,"teamCode":"8","loseGoal":44,"foul":457,"lost":11,"won":17,"goalGap":18,"teamRankingGroup":"normal","rank":7,"assist":null,"drawn":10},{"teamName":"사우샘프턴 FC","gainGoal":41,"gameCount":38,"lastResult":"1승 2무 2패","league":100,"gainPoint":46,"teamCode":"18","loseGoal":48,"foul":426,"lost":16,"won":12,"goalGap":-7,"teamRankingGroup":"normal","rank":8,"assist":null,"drawn":10},{"teamName":"AFC 본머스","gainGoal":55,"gameCount":38,"lastResult":"3승 2무 0패","league":100,"gainPoint":46,"teamCode":"23","loseGoal":67,"foul":368,"lost":16,"won":12,"goalGap":-12,"teamRankingGroup":"normal","rank":9,"assist":null,"drawn":10},{"teamName":"웨스트 브로미치 알비온 FC","gainGoal":43,"gameCount":38,"lastResult":"0승 1무 4패","league":100,"gainPoint":45,"teamCode":"42","loseGoal":51,"foul":448,"lost":17,"won":12,"goalGap":-8,"teamRankingGroup":"normal","rank":10,"assist":null,"drawn":9},{"teamName":"웨스트햄 유나이티드 FC","gainGoal":47,"gameCount":38,"lastResult":"2승 2무 1패","league":100,"gainPoint":45,"teamCode":"43","loseGoal":64,"foul":408,"lost":17,"won":12,"goalGap":-17,"teamRankingGroup":"normal","rank":11,"assist":null,"drawn":9},{"teamName":"레스터 시티 FC","gainGoal":48,"gameCount":38,"lastResult":"2승 1무 2패","league":100,"gainPoint":44,"teamCode":"29","loseGoal":63,"foul":448,"lost":18,"won":12,"goalGap":-15,"teamRankingGroup":"normal","rank":12,"assist":null,"drawn":8},{"teamName":"스토크 시티 FC","gainGoal":41,"gameCount":38,"lastResult":"1승 2무 2패","league":100,"gainPoint":44,"teamCode":"38","loseGoal":56,"foul":434,"lost":16,"won":11,"goalGap":-15,"teamRankingGroup":"normal","rank":13,"assist":null,"drawn":11},{"teamName":"크리스탈 팰리스 FC","gainGoal":50,"gameCount":38,"lastResult":"1승 0무 4패","league":100,"gainPoint":41,"teamCode":"5","loseGoal":63,"foul":471,"lost":21,"won":12,"goalGap":-13,"teamRankingGroup":"normal","rank":14,"assist":null,"drawn":5},{"teamName":"스완지 시티 AFC","gainGoal":45,"gameCount":38,"lastResult":"4승 1무 0패","league":100,"gainPoint":41,"teamCode":"65","loseGoal":70,"foul":400,"lost":21,"won":12,"goalGap":-25,"teamRankingGroup":"normal","rank":15,"assist":null,"drawn":5},{"teamName":"번리 FC","gainGoal":39,"gameCount":38,"lastResult":"1승 1무 3패","league":100,"gainPoint":40,"teamCode":"70","loseGoal":55,"foul":429,"lost":20,"won":11,"goalGap":-16,"teamRankingGroup":"normal","rank":16,"assist":null,"drawn":7},{"teamName":"왓포드 FC","gainGoal":40,"gameCount":38,"lastResult":"0승 0무 5패","league":100,"gainPoint":40,"teamCode":"41","loseGoal":68,"foul":515,"lost":20,"won":11,"goalGap":-28,"teamRankingGroup":"normal","rank":17,"assist":null,"drawn":7},{"teamName":"헐 시티 AFC","gainGoal":37,"gameCount":38,"lastResult":"1승 1무 3패","league":100,"gainPoint":34,"teamCode":"26","loseGoal":80,"foul":404,"lost":22,"won":9,"goalGap":-43,"teamRankingGroup":"relegation","rank":18,"assist":null,"drawn":7},{"teamName":"미들즈브러 FC","gainGoal":27,"gameCount":38,"lastResult":"1승 1무 3패","league":100,"gainPoint":28,"teamCode":"30","loseGoal":53,"foul":481,"lost":20,"won":5,"goalGap":-26,"teamRankingGroup":"relegation","rank":19,"assist":null,"drawn":13},{"teamName":"선덜랜드 AFC","gainGoal":29,"gameCount":38,"lastResult":"1승 0무 4패","league":100,"gainPoint":24,"teamCode":"39","loseGoal":69,"foul":437,"lost":26,"won":6,"goalGap":-40,"teamRankingGroup":"relegation","rank":20,"assist":null,"drawn":6}]}
        for(int i=0; i<teaminfoArray.size(); i++){
        	TeamVO teamVO = new TeamVO();
            JSONObject teamObject = (JSONObject) teaminfoArray.get(i);
            
            teamVO.setTeamName			((String)teamObject.get("teamName"));         
            teamVO.setLastResult		((String)teamObject.get("lastResult"));       
            teamVO.setTeamCode			((String)teamObject.get("teamCode"));         
            teamVO.setTeamRankingGroup	((String)teamObject.get("teamRankingGroup"));
            teamVO.setChampsLeague		((String)teamObject.get("champsLeague"));     
            
            teamVO.setGainGoal			(((Long)teamObject.get("gainGoal")).intValue());
            teamVO.setGameCount			(((Long)teamObject.get("gameCount")).intValue());
            teamVO.setGainPoint			(((Long)teamObject.get("gainPoint")).intValue());        
            teamVO.setFoul 				(((Long)teamObject.get("foul")).intValue());             
            teamVO.setLost 				(((Long)teamObject.get("lost")).intValue());             
            teamVO.setWon 				(((Long)teamObject.get("won")).intValue());              
            teamVO.setRank 				(((Long)teamObject.get("rank")).intValue());             
            teamVO.setDrawn				(((Long)teamObject.get("drawn")).intValue());             
                     
            list.add(teamVO);
            System.out.println(teamVO);
           
        } 
	}catch (ParseException e) {
	 e.printStackTrace();
	}
		
		for(TeamVO teamVOO : list) {
			System.out.println(teamVOO);
		}
		
		
		
		return list;
		
	}
}
