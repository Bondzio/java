package anno;

import java.util.List;

public class AnnotationTest {
	
	@SafeVarargs // 아래 가변형 변수로 인한 heap pollution 에러가 안 생기게 한다.  
	public AnnotationTest(List<String> ...list){
				
	}
	
	@SafeVarargs
	public static String test(List<String> ...list){
		return null;
	}
	
}
