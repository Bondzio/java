package anno;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD}) //적용 범위
@Retention(RetentionPolicy.RUNTIME) // 컴파일 소스레벨인지, 수행중 바이트 코드레벨인지
public @interface PrintAnnotation {
	String 	value() 	default "-";
	int 	number() 	default 15; 	
}
