package com.oceans.semosun.like.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Likey implements Serializable{
	private int rNO;
	private int rTNO;
	private int userNO;
	private Date lDate;
	private String lStatus;
	
	private String tName;
	private int tno;
	
	
	public Likey() {
		super();
	}


	public Likey(int rNO, int rTNO, int userNO, Date lDate, String lStatus, String tName, int tno) {
		super();
		this.rNO = rNO;
		this.rTNO = rTNO;
		this.userNO = userNO;
		this.lDate = lDate;
		this.lStatus = lStatus;
		this.tName = tName;
		this.tno = tno;
	}


	@Override
	public String toString() {
		return "Likey [rNO=" + rNO + ", rTNO=" + rTNO + ", userNO=" + userNO + ", lDate=" + lDate + ", lStatus="
				+ lStatus + ", tName=" + tName + ", tno=" + tno + "]";
	}


	public int getrNO() {
		return rNO;
	}


	public void setrNO(int rNO) {
		this.rNO = rNO;
	}


	public int getrTNO() {
		return rTNO;
	}


	public void setrTNO(int rTNO) {
		this.rTNO = rTNO;
	}


	public int getUserNO() {
		return userNO;
	}


	public void setUserNO(int userNO) {
		this.userNO = userNO;
	}


	public Date getlDate() {
		return lDate;
	}


	public void setlDate(Date lDate) {
		this.lDate = lDate;
	}


	public String getlStatus() {
		return lStatus;
	}


	public void setlStatus(String lStatus) {
		this.lStatus = lStatus;
	}


	public String gettName() {
		return tName;
	}


	public void settName(String tName) {
		this.tName = tName;
	}


	public int getTno() {
		return tno;
	}


	public void setTno(int tno) {
		this.tno = tno;
	}

	

}
