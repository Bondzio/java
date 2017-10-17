package org.json.simple;

public class Test501 {
	
	public void testJsonObject() {
		JSONObject object = new JSONObject();
		object.put("name", "bk");
		object.put("nickname", "Born to Kill");
		
		System.out.println(object.toJSONString());
	}
}
