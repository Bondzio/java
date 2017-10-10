package api;

public class BoxedPrimitivesTest {
	public static void main(String[] args) {
		Integer i 	= new Integer(10); // instance를 매번 만들어 쓰는것이 불편하다. 
		
		Integer i2	= 10; 			// java5nf  auto boxing 이후 사용가능  
		int 	i3	= i; 			// java5nf, auto unboxing 형변환 하지 않고 바로 대입된다  i.intValue();
		Object 	i4	= 10; 			// java5nf, auto boxing형변환이 필요 없다.
		int 	i5	=(int) i4;		// java7nf, framework 이 java6을 많이 쓴다. 안 먹을 수 있다. 
		int 	i6	=(Integer) i4;	// java 5~6, boxed primitive 를 한번 거쳐서 사용하는 것이 좋다.
		int		i7  = Integer.parseInt("100");
		long	i8  = Long.parseLong("100L");
	}
}
