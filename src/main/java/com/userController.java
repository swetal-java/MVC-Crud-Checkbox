package com;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class userController {
	
	@Autowired
	private userDao dao;

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	
	
	@RequestMapping("/addUser")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/register")
	public String addUser(@ModelAttribute userModel u,Model m,HttpServletRequest req) {
		String hobby= "";
		String join = "";
		String hobbies[] = req.getParameterValues("framework");
		for(int i = 0;i<hobbies.length;i++) {
			hobby = hobby + hobbies[i];
			join = String.join(",", hobbies);
		}
		u.setFramework(join);
		this.dao.insertUser(u);
		List<userModel> list = this.dao.getalldata();
		m.addAttribute("list",list);
		return "homePage";
	}
	
	@RequestMapping("/home")
	public String home(Model m) {
		List<userModel> list = this.dao.getalldata();
		m.addAttribute("list",list);
		return "homePage";
	}
	
	@RequestMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable("id") int id) {
		userModel u =  this.dao.getDataById(id);
		ModelAndView m = new ModelAndView();
		m.addObject("a", u);
		m.setViewName("edit");
		return m;
	}
	
	@RequestMapping("/show/{id}")
	public ModelAndView showUser(@PathVariable("id") int id) {
		userModel u = this.dao.getDataById(id);
		ModelAndView m1 = new ModelAndView();
		m1.addObject("u",u);
		m1.setViewName("show");
		return m1;
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable("id") int id) {
		this.dao.deleteUser(id);
		return "homePage";
	}
	
	
	
}
