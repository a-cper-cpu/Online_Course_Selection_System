package com.southwind.entity;

public class Student {
	private String sId;
	private String sName;
	private String sSex;
	private String sMobil;
	private String sAddress;
	private String sPass;
	private String dId;
	private String sClass;
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsSex() {
		return sSex;
	}
	public void setsSex(String sSex) {
		this.sSex = sSex;
	}
	public String getsMobil() {
		return sMobil;
	}
	public void setsMobil(String sMobil) {
		this.sMobil = sMobil;
	}
	public String getsAddress() {
		return sAddress;
	}
	public void setsAddress(String sAddress) {
		this.sAddress = sAddress;
	}
	public String getsPass() {
		return sPass;
	}
	public void setsPass(String sPass) {
		this.sPass = sPass;
	}
	public String getdId() {
		return dId;
	}
	public void setdId(String dId) {
		this.dId = dId;
	}
	public String getsClass() {
		return sClass;
	}
	public void setsClass(String sClass) {
		this.sClass = sClass;
	}
	public Student(String sId, String sName, String sSex, String sMobil, String sAddress, String sPass, String dId,
			String sClass) {
		super();
		this.sId = sId;
		this.sName = sName;
		this.sSex = sSex;
		this.sMobil = sMobil;
		this.sAddress = sAddress;
		this.sPass = sPass;
		this.dId = dId;
		this.sClass = sClass;
	}
	
	
}
