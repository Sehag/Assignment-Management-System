package jbr.springmvc.service;

import java.util.List;

import jbr.springmvc.model.Assignment;
import jbr.springmvc.model.AssignmentSubmission;
import jbr.springmvc.model.Grade;
import jbr.springmvc.model.SubmittedAssignment;

public interface AssignmentService {
	
int create(Assignment create);

List<Assignment> getAssignmentDetails();

int updateAssignment(AssignmentSubmission submitAssignment);

List<Assignment> getAssignmentDetails(String username);

List<SubmittedAssignment> getSubmittedAssignmentDetails(String username);

int updateGrade(Grade submitGrade);

}
