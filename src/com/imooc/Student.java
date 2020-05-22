package com.imooc;

public class Student {
	private int id;
	private String name;
	private String sex;
	private String cla;
	private Double result;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCla() {
		return cla;
	}
	public void setCla(String cla) {
		this.cla = cla;
	}
	public Double getResult() {
		return result;
	}
	public void setResult(Double result) {
		this.result = result;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", sex=" + sex + ", cla=" + cla + ", result=" + result + "]";
	}
	public Student(int id, String name, String sex, String cla, Double result) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.cla = cla;
		this.result = result;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

}

