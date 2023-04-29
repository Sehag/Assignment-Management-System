package jbr.springmvc.model;

public class SubmittedAssignment {
	
	private String	submission_id;
	private String assignment_id;
	private String username;
	private String submitted_assignment;
	private String grade;
	
    public String getSubmission_id() {
		return submission_id;
	}
	public void setSubmission_id(String submission_id) {
		this.submission_id = submission_id;
	}
	public String getAssignment_id() {
		return assignment_id;
	}
	public void setAssignment_id(String assignment_id) {
		this.assignment_id = assignment_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSubmitted_assignment() {
		return submitted_assignment;
	}
	public void setSubmitted_assignment(String submitted_assignment) {
		this.submitted_assignment = submitted_assignment;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}




}
