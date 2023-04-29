package jbr.springmvc.model;

public class AssignmentSubmission {

	private String assignment_id;
	private String assignmentDetails;
	private String username;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAssignment_id() {
		return assignment_id;
	}
	public void setAssignment_id(String assignment_id) {
		this.assignment_id = assignment_id;
	}
	public String getAssignmentDetails() {
		return assignmentDetails;
	}
	public void setAssignmentDetails(String assignmentDetails) {
		this.assignmentDetails = assignmentDetails;
	}
	
	
	
}
