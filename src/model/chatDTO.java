package model;

import java.sql.Date;

public class chatDTO {

	//멤버변수
	private String num; //메시지에 순서 매기기
	private String id; //채팅 접속자 아이디
	private String msg; //보낸 메시지
	private java.sql.Date postDate; //메시지 작성일
	
	//getter/setter
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public java.sql.Date getPostDate() {
		return postDate;
	}
	public void setPostDate(java.sql.Date postDate) {
		this.postDate = postDate;
	}
}