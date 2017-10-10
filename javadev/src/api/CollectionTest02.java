//2017.07.05

package api;

import java.util.HashMap;
import java.util.Map;

public class CollectionTest02 {
	public static void main(String[] args) {
		Map<String, String> map = new HashMap<>();
		
		map.put("브래드피트",	"010-1111-1111");
		map.put("대리운전",		"1588-1588");
		map.put("홈쇼핑",		"8249-8249");
		map.put("소방관형님",	"119");
		
		// System.out.println(map.get("홈쇼핑"));
		for(String s :map.keySet()){
			System.out.println(s);
		}
	}
}
