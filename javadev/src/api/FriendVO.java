// 170705

package api;

public class FriendVO {
	private String	phone;
	private int		age;
	private int		gender;
	
	
	public FriendVO(String phone, int age, int gender) {
		super();
		this.phone = phone;
		this.age = age;
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "FriendVO [phone=" + phone + ", age=" + age + ", gender=" + gender + "]";
	}
	public final String getPhone() {
		return phone;
	}
	public final void setPhone(String phone) {
		this.phone = phone;
	}
	public final int getAge() {
		return age;
	}
	public final void setAge(int age) {
		this.age = age;
	}
	public final int getGender() {
		return gender;
	}
	public final void setGender(int gender) {
		this.gender = gender;
	}
	
	
	
	
	
}
