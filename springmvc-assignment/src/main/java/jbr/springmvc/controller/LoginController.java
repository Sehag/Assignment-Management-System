 package jbr.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jbr.springmvc.model.Login;
import jbr.springmvc.model.User;
import jbr.springmvc.service.UserService;

@Controller
public class LoginController {

  @Autowired
  UserService userService;

  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("login");
    mav.addObject("login", new Login());

    return mav;
  }

  
  @RequestMapping(value = "/home", method = RequestMethod.GET)
  public ModelAndView showHome(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("home");
    mav.addObject("home", new Login());

    return mav;
  }
  
  
  
  @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
      @ModelAttribute("login") Login login) {
    ModelAndView mav = null;
    
    User user = userService.validateUser(login);
    
   HttpSession session = request.getSession();
   
   if(user !=null ) {   
   session.setAttribute("username", user.getUsername());
   }
 
 if (null != user) {
    if( user.getRole().equalsIgnoreCase("student")) {
    	  mav = new ModelAndView("student");
    	  mav.addObject("firstname", user.getFirstname());
    	
    } else if ( user.getRole().equalsIgnoreCase("teacher")) {	
    	 mav = new ModelAndView("teacher");
    	 mav.addObject("firstname", user.getFirstname());
    	
    }
    
    
    else if ( user.getRole().equalsIgnoreCase("admin")) {	
   	 mav = new ModelAndView("admin");
   	 mav.addObject("firstname", user.getFirstname());
    
    	
    }
      
   else {
      mav = new ModelAndView("login");
      mav.addObject("message", "Username or Password is wrong!!");
    }
 }
    return mav;
  }
  
  @RequestMapping(value = "/logout", method = { RequestMethod.GET,RequestMethod.POST })
  public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {

	// Invalidating the session.   
	request.getSession().invalidate()  ;
	 
    ModelAndView mav = new ModelAndView("home");
 
    return mav;
  }
}