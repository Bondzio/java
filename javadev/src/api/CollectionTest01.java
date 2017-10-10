package api;

import java.util.ArrayList;
import java.util.List;

public class CollectionTest01 {
	public static void main(String[] args) {
		List<String> list = new ArrayList<>();  // upcasting 을 해서 사용함. <String> 으로 generic type으로 사용. 양쪽이 같으면 오른쪽 <String> 을 <> 으로 생략하기도 함.   
		list.add("옥자");printStr(list);
		list.add("봉준호");printStr(list);
		list.add("돼지");printStr(list);
		list.add("호랑이");printStr(list);
		list.add("공뇽");printStr(list);
		// list.add(1); // < String > 이 없으면  전혀 다른 타입을 넣어도 문제가 되지 않는다. 
	}

	private static void printStr(List<String> list) {
		for(String name : list) {
			System.out.print(name + "\t");			
		}		
		System.out.println();
	}

/*	private static void printStr(List list) {
		for (int i=0;i<list.size();i++) {
			System.out.print(list.get(i) + "\t");
		}
		for (Object s : list) {
			System.out.print(s + "\t");
		}
		System.out.println();
		
	}
*/
}
