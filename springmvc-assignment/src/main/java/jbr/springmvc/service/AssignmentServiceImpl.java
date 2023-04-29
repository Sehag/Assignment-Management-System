package jbr.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import jbr.springmvc.dao.AssignmentDao;
import jbr.springmvc.dao.AssignmentDaoImpl;
import jbr.springmvc.model.Assignment;
import jbr.springmvc.model.AssignmentSubmission;
import jbr.springmvc.model.Grade;
import jbr.springmvc.model.SubmittedAssignment;



public class AssignmentServiceImpl implements AssignmentService {

    @Autowired
	public AssignmentDao assmntDao;
	
	@Override
	public int create(Assignment create) {
		// TODO Auto-generated method stub
		return assmntDao.create(create);
	}

	@Override
	public List<Assignment> getAssignmentDetails() {
		// TODO Auto-generated method stub
		return assmntDao.getAssignmentDetails();
	}

	@Override
	public int updateAssignment(AssignmentSubmission submitAssignment) {
		// TODO Auto-generated method stub
		return assmntDao.updateAssignment(submitAssignment);
	}

	@Override
	public List<Assignment> getAssignmentDetails(String username) {
		// TODO Auto-generated method stub
		return assmntDao.getAssignmentDetails(username);
	}

	@Override
	public List<SubmittedAssignment> getSubmittedAssignmentDetails(String username) {
		// TODO Auto-generated method stub
		return assmntDao.getSubmittedAssignmentDetails(username);
	}

	@Override
	public int updateGrade(Grade submitGrade) {
		// TODO Auto-generated method stub
		return assmntDao.updateGrade(submitGrade);
	}
	
	
}
