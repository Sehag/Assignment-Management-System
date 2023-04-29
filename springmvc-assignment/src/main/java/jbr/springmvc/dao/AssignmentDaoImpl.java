package jbr.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import jbr.springmvc.model.Assignment;
import jbr.springmvc.model.AssignmentSubmission;
import jbr.springmvc.model.Grade;
import jbr.springmvc.model.SubmittedAssignment;
import jbr.springmvc.model.User;

public class AssignmentDaoImpl implements AssignmentDao {

	 @Autowired
	  DataSource datasource;

	  @Autowired
	  JdbcTemplate jdbcTemplate;
	  
	@Override
	public int create(Assignment create) {
		
		 String sql = "insert into ASMNT_DETAILS(sub,asmnt_type,des,due_date,username) values(?,?,?,?,?)";
		    return jdbcTemplate.update(sql, new Object[] { create.getSub(),create.getAsmnt_type(), create.getDes(),create.getDue_date(),create.getUsername() });
		  }

	@Override
	public List<Assignment> getAssignmentDetails() {
		
		String sql = "select * from ASMNT_DETAILS ";
	      
	    List<Assignment> assignments = jdbcTemplate.query(sql, new AssignmentMapper());
	    
        return assignments;
        
	 }

	@Override
	public int updateAssignment(AssignmentSubmission submitAssignment) {
		// TODO Auto-generated method stub
		
		// inserting submission id and student user mapping
		
		 String sql = "insert into ASSMNT_SUBMISSION(assignment_id,username,submitted_assignment) values(?,?,?)";
		 
		    return jdbcTemplate.update(sql, new Object[] {submitAssignment.getAssignment_id(),submitAssignment.getUsername() ,submitAssignment.getAssignmentDetails()});
		  }
		
		
	@Override
	public List<Assignment> getAssignmentDetails(String username) {
		
		String sql = "select * from ASMNT_DETAILS where username= '" + username + "'";
				
	    List<Assignment> assignments = jdbcTemplate.query(sql, new AssignmentMapper());
	    
        return assignments;
        

	}

	@Override
	public List<SubmittedAssignment> getSubmittedAssignmentDetails(String username) {

		String sql = "select  * from assmnt_submission where assignment_id in  (select assignment_id from asmnt_details where username='" + username + "'" +")"; 
		
	    List<SubmittedAssignment> assignments = jdbcTemplate.query(sql, new SubmittedAssignmentMapper());
	    
        return assignments;
		
	}

	@Override
	public int updateGrade(Grade submitGrade) {

		// updating grade:
		
		 String sql = "update assmnt_submission set grade= ? where submission_id = ? ";
		 
		 return  jdbcTemplate.update(sql, new Object[] {submitGrade.getGrade(), submitGrade.getSubmission_id()});
		    
		    
		 
		  }
	
	}


class SubmittedAssignmentMapper implements RowMapper<SubmittedAssignment> {

	  public SubmittedAssignment mapRow(ResultSet rs, int arg1) throws SQLException {
		  SubmittedAssignment assignment = new SubmittedAssignment();
		  
			assignment.setSubmission_id(rs.getString("submission_id"));
			assignment.setAssignment_id(rs.getString("assignment_id"));
			assignment.setUsername(rs.getString("username"));
			assignment.setSubmitted_assignment(rs.getString("submitted_assignment"));
			assignment.setGrade(rs.getString("grade"));
		   
	    return assignment;
	  }
	  
	  
	  
	}



class AssignmentMapper implements RowMapper<Assignment> {

	  public Assignment mapRow(ResultSet rs, int arg1) throws SQLException {
		  Assignment assignment = new Assignment();
	    assignment.setSub(rs.getString("sub"));
	    assignment.setAsmnt_type(rs.getString("asmnt_type"));
	    assignment.setDes(rs.getString("des"));
	    assignment.setDue_date(rs.getDate("due_date").toString());
	    assignment.setUsername(rs.getString("username"));
	    assignment.setAssignment_id(rs.getInt("assignment_id"));
	    return assignment;
	  }
	}





