package basic.enumeration;

public enum PowerState {
	OFF("전원이 꺼졌습니다.", 3),
	ON("전원이 켜졌습니다", 5),
	SUSPEND("컴퓨터가 먹통입니다", 7),
	KKK,
	HAHAHA;
	
		
	private String description;
	
	private PowerState(String description, int a){
		this.description = description;
		System.out.println(a);
	}
	
	private PowerState(){
		System.out.println("HAHAH");
	}
	
	public String getDescription() {
		return description;
		
	}
	
	@Override
	public String toString() {
		return getDescription();
		
	}
}
