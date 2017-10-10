package basic.enumeration;
import static basic.enumeration.PowerState.KKK;
import static basic.enumeration.PowerState.OFF;
import static basic.enumeration.PowerState.ON;
import static basic.enumeration.PowerState.SUSPEND;

public class Computer extends ElectricDevice{
	private PowerState state = OFF;	
	@Override
	public void turnOn() {		
		state = ON;		
		System.out.println(state);
	}

	@Override
	public void turnOff() {		
		state = OFF;		
	}

	public void suspend() {
		state = SUSPEND;		
	}	
	
	public void kkk() {
		state = KKK;		
	}	
//	public void setState(PowerState state) {
//		switch (state) {
//		case ON: System.out.println("전원이 켜졌습니다 ON"); break;
//		case OFF: System.out.println("전원이 꺼진 상태입니다. OFF"); break; 
//		case SUSPEND: System.out.println("컴이 먹통임"); break;							
//		}
//		System.out.println(state);
//	}
}