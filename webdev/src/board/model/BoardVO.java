package board.model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.codec.digest.DigestUtils;

public class BoardVO {
	private long no; 
	private String name;
	private String title;
	private String content;
	private String pwd;
	private Date regdate;
	private String regdate2;
	private int viewcount;
	
	public final long getNo() {
		return no;
	}
	public final void setNo(long no) {
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
	public final String getPwd() {
		return pwd;
	}
	public final void setPwd(String pwd) {
		this.pwd = DigestUtils.sha512Hex(pwd);
	}
/*	public final Date getRegdate() {
		return regdate;
	}*/
	public final String getRegdate() {
		return regdate2;
	}
	public final void setRegdate(Date regdate) {
		this.regdate = regdate;
		DateFormat sdFormat = new SimpleDateFormat("yyMMdd");
		regdate2 = sdFormat.format(regdate);
	}
	public final int getViewcount() {
		return viewcount;
	}
	public final void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}
	
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", name=" + name + ", title=" + title + ", content=" + content + ", pwd=" + pwd
				+ ", regdate=" + regdate + ", viewcount=" + viewcount + "]";
	}
	
	
	
}
