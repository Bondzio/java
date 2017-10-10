package memo.model;

public class MemoVO {
	private int no;
	private String name;
	private String title;
	private String content;
	public final int getNo() {
		return no;
	}
	public final void setNo(int no) {
		this.no = no;
	}
	public final String getName() {
		return name;
	}
	public final void setName(String name) {
		this.name = name;
	}
	public final String getTitle() {
		return title;
	}
	public final void setTitle(String title) {
		this.title = title;
	}
	public final String getContent() {
		return content;
	}
	public final void setContent(String content) {
		this.content = content;
	}
	
	
	@Override
	public String toString() {
		return "MemoVO [no=" + no + ", name=" + name + ", title=" + title + ", content=" + content + "]";
	}
	
	
	
	
	
}
