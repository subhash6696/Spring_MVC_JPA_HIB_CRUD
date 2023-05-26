package org.jsp.controller;

import org.jsp.dao.UserDao;
import org.jsp.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes(names={"u"})
public class Usercontroller {
	@Autowired
	private UserDao dao;

	@RequestMapping(value = "/save")
	public ModelAndView Saveuser(@ModelAttribute User user, ModelAndView view) {
		view.setViewName("print.jsp");
		user = dao.Saveuser(user);
		view.addObject("msg", "user saved with ID: " + user.getId());
		return view;
	}

	@RequestMapping(value = "/update")
	public ModelAndView Updateuser(@ModelAttribute User user, ModelAndView view) {
		user = dao.updateUser(user);
		view.setViewName("print.jsp");
		view.addObject("u", user);
		view.addObject("msg", "User Updated with ID: " + user.getId());
		return view;
	}

	@PostMapping(value = "/login")
	public ModelAndView login(@ModelAttribute @RequestParam long phone, @RequestParam String password,
			ModelAndView view) {
		User user = dao.verfiyUser(phone, password);

		if (user != null) {
			view.addObject("u", user);
			view.setViewName("home.jsp");
			return view;
		} else {
			view.addObject("msg", "Invalid Phone or Password");
			view.setViewName("login.jsp");
			return view;
		}
	}
	
	@GetMapping("/delete")
	public ModelAndView deleteUser(@RequestParam int id,ModelAndView view) {
		boolean isDeleted=dao.deleteUser(id);
	
		if(isDeleted ) {
			view.setViewName("login.jsp");
			view.addObject("msg", "User Account is Deleted");
			return view;
		}
		else {
			view.setViewName("login.jsp");
			view.addObject("msg", "You must Login to delete");
			return view;
			
		}
	}
	


}
