package api;

import java.util.HashMap;
import java.util.Map;

public class CollectionTest03 {
	public static void main(String[] args) {
		Map <String, FriendVO> friendMap = new HashMap<>();
		friendMap.put("김정은", new FriendVO("82-82-82",27,1));
		friendMap.put("트럼프", new FriendVO("01-01-01",52,1));
		friendMap.put("아베", 	new FriendVO("723182-82-82",58,1));
		friendMap.put("푸틴", 	new FriendVO("82-82-82",27,2));
		friendMap.put("시진핑", new FriendVO("4444",40,1));
		
		//System.out.println(friendMap.get("시진핑"));
		
		for (String key:friendMap.keySet()){
			FriendVO friendVO = friendMap.get(key);
			System.out.print(key + "의 전화번호는" + friendVO.getPhone());
			System.out.print(",나이는 " + friendVO.getAge() + "이며 ");
			System.out.print(friendVO.getGender() == 1 ? "남자" : "여자");
			System.out.println(" 입니다");
			
			System.out.println("key : " + key + ",value : " + friendMap.get(key));
			
		}
		
	}
}
