package jbr.springmvc.model;

public class Assignment {

private String sub;
private String asmnt_type;
private String des;
private String due_date;
private String username;
private int assignment_id;


public int getAssignment_id() {
	return assignment_id;
}
public void setAssignment_id(int assignment_id) {
	this.assignment_id = assignment_id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getSub() {
	return sub;
}
public void setSub(String sub) {
	this.sub = sub;
}
public String getAsmnt_type() {
	return asmnt_type;
}
public void setAsmnt_type(String asmnt_type) {
	this.asmnt_type = asmnt_type;
}
public String getDes() {
	return des;
}
public void setDes(String des) {
	this.des = des;
}
public String getDue_date() {
	return due_date;
}
public void setDue_date(String due_date) {
	this.due_date = due_date;
}



}
