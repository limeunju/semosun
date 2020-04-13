package com.oceans.semosun.talk.model.vo;

import java.sql.Timestamp;

public class TalkComment {
	private int commentno ;
	private int talkno ;
	private int userno ;
	private String ccontent ;
	private Timestamp cdate ;
	private String cstatus ;
	private String nickname ;
	
	public TalkComment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TalkComment(int commentno, int talkno, int userno, String ccontent, Timestamp cdate, String cstatus,
			String nickname) {
		super();
		this.commentno = commentno;
		this.talkno = talkno;
		this.userno = userno;
		this.ccontent = ccontent;
		this.cdate = cdate;
		this.cstatus = cstatus;
		this.nickname = nickname;
	}

	public TalkComment(int talkno, int userno, String ccontent) {
		super();
		this.talkno = talkno;
		this.userno = userno;
		this.ccontent = ccontent;
	}

	public int getCommentno() {
		return commentno;
	}

	public void setCommentno(int commentno) {
		this.commentno = commentno;
	}

	public int getTalkno() {
		return talkno;
	}

	public void setTalkno(int talkno) {
		this.talkno = talkno;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getCcontent() {
		return ccontent;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public Timestamp getCdate() {
		return cdate;
	}

	public void setCdate(Timestamp cdate) {
		this.cdate = cdate;
	}

	public String getCstatus() {
		return cstatus;
	}

	public void setCstatus(String cstatus) {
		this.cstatus = cstatus;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "TalkComment [commentno=" + commentno + ", talkno=" + talkno + ", userno=" + userno + ", ccontent="
				+ ccontent + ", cdate=" + cdate + ", cstatus=" + cstatus + ", nickname=" + nickname + "]";
	}
	
	
	
	
	
}                     
