	package jbr.springmvc.controller;

	import java.util.List;

import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.servlet.ModelAndView;

import jbr.springmvc.model.Assignment;
import jbr.springmvc.model.AssignmentSubmission;
import jbr.springmvc.model.Grade;
import jbr.springmvc.model.Login;
import jbr.springmvc.model.SubmittedAssignment;
import jbr.springmvc.model.User;
import jbr.springmvc.service.AssignmentService;
import jbr.springmvc.service.AssignmentServiceImpl;
import jbr.springmvc.service.UserService;

	@Controller
	public class AssignmentController {
	
	  @Autowired
	  public AssignmentService asmntService;

	  @RequestMapping(value = "/create", method = RequestMethod.GET)
	  public ModelAndView showCreate(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("create");
	    mav.addObject("create", new Assignment());
   
	    return mav;
	  }

	  @RequestMapping(value = "/createProcess", method = RequestMethod.POST)
	  public ModelAndView createAssignment(HttpServletRequest request, HttpServletResponse response,
	      @ModelAttribute("create") Assignment create) {

		  asmntService.create(create);

	    return new ModelAndView("teacher");
	    
	  }
	  
	  @RequestMapping(value = "/viewAssignment", method = RequestMethod.GET)
	  public ModelAndView viewAssignment(HttpServletRequest request, HttpServletResponse response
	      ) {

		  List<Assignment> assignmentsList = asmntService.getAssignmentDetails();
		  ModelAndView nav = new ModelAndView("viewAssignment");
		  nav.addObject(assignmentsList);
		  HttpSession session = request.getSession();
		  session.setAttribute("viewAssignment", assignmentsList);
	    return nav;
	    
	  }
	  
	  
	  @RequestMapping(value = "/prepareAssignment", method = RequestMethod.GET)
	  public ModelAndView prepareAssignment(HttpServletRequest request, HttpServletResponse response
	      ) {
		  
		  ModelAndView nav = new ModelAndView("prepareAssignment");
		  nav.addObject("assignmentSubmission", new AssignmentSubmission());
	    return nav;
	    
	  } 
	  
	  @RequestMapping(value = "/submitAssignmentProcess", method = RequestMethod.POST)
	  public ModelAndView submitAssignmentProcess(HttpServletRequest request, HttpServletResponse response ,
			  @ModelAttribute("assignmentSubmission") AssignmentSubmission assignmentSubmission
	      ) {
		 

		  ModelAndView nav = new ModelAndView("student");
		  nav.addObject("assignmentSubmission", new AssignmentSubmission());
		  asmntService.updateAssignment(assignmentSubmission);
		  
	    return nav;
	    
	  } 
	  
	  @RequestMapping(value = "/viewAssignmentTeacherAction", method = RequestMethod.GET)
	  public ModelAndView viewAssignmentTeacher(HttpServletRequest request, HttpServletResponse response
	      ) {
        
		  HttpSession session = request.getSession();
		  String username = (String)session.getAttribute("username");
		  List<Assignment> assignmentsListData = asmntService.getAssignmentDetails(username);
		  ModelAndView nav = new ModelAndView("viewAssignmentTeacher");
		  nav.addObject(assignmentsListData);
		  session.setAttribute("assignmentsListTeachData", assignmentsListData);
	    return nav;
	    
	  }
	  
	  @RequestMapping(value = "/teacherHome", method = { RequestMethod.GET,RequestMethod.POST })
	  public ModelAndView teacherHome(HttpServletRequest request, HttpServletResponse response
	     ) {

	    return new ModelAndView("teacher");
	    
	  }
	  
	  @RequestMapping(value = "/studentHome", method = { RequestMethod.GET,RequestMethod.POST })
	  public ModelAndView studentHome(HttpServletRequest request, HttpServletResponse response
	     ) {

	    return new ModelAndView("student");
	    
	  }
	 
	  @RequestMapping(value = "/viewSubmissionTeacher", method = RequestMethod.GET)
	  public ModelAndView viewSubmissionTeacher(HttpServletRequest request, HttpServletResponse response
	      ) {
        
		  HttpSession session = request.getSession();
		  String username = (String)session.getAttribute("username");
		  List<SubmittedAssignment> submittedAssignmentListData = asmntService.getSubmittedAssignmentDetails(username);
		  ModelAndView nav = new ModelAndView("viewSubmissions");
		  nav.addObject(submittedAssignmentListData);
		  session.setAttribute("submittedAssignmentDetails", submittedAssignmentListData);
	    return nav;
	    
	  }
	  
	  @RequestMapping(value = "/prepareGrade", method = RequestMethod.GET)
	  public ModelAndView prepareGrade(HttpServletRequest request, HttpServletResponse response
	      ) {		  
		  ModelAndView nav = new ModelAndView("grade");
		  nav.addObject("gradeSubmission", new Grade());
	    return nav;
	    
	  } 
	  
	  @RequestMapping(value = "/gradeSubmissionProcess", method = RequestMethod.POST)
	  public ModelAndView gradeSubmissionProcess(HttpServletRequest request, HttpServletResponse response ,
			  @ModelAttribute("gradeSubmission") Grade assignmentSubmission
	      ) {
		
		  HttpSession session = request.getSession();
	
		  ModelAndView nav = new ModelAndView("teacher");
		  asmntService.updateGrade(assignmentSubmission);
		  
	    return nav;
	    
	  } 
	  
	  
	}


