package kr.co.dbinv.eddy;

class CoffeeMachine {
	private String menu;

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	void button() {
		System.out.println(menu + "가 나왔습니다.");
	}
}
