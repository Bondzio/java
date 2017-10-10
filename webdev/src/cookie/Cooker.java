package cookie;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cooker {
	private Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();

	// cooker constructor() cookie가 있으면 cookie값을 얻어서 hash에 저장해줌
	public Cooker(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				cookieMap.put(cookies[i].getName(), cookies[i]);
			}
		}
	}

	public boolean exist(String name) {
		return cookieMap.get(name) != null;
	}

	public Cookie getCookie(String name) {
		return cookieMap.get(name);
	}

	public String getValue(String name) throws UnsupportedEncodingException {
		Cookie cookie = cookieMap.get(name);// name (key 값)을 넣어서 value를 얻음. return 값은 Cookie  

		if (cookie == null)
			return null;
		else
			return URLDecoder.decode(cookie.getValue(), "UTF-8");
	}

	public static Cookie createCookie(String name, String value) throws UnsupportedEncodingException {
		return new Cookie(name, URLEncoder.encode(value, "UTF-8"));
	}

	public static Cookie createCookie(String name, String value, int maxAge) throws UnsupportedEncodingException {

		Cookie cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
		cookie.setMaxAge(maxAge);
		return cookie;
	}
}