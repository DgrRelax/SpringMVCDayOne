package com.dgr.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dgr.pojo.User;
import com.dgr.pojo.Users;


@Controller

public class testRequestMappingParams {
	
	private User user = new User();
	
	@RequestMapping(value="/testModelAndView")
	public ModelAndView testModelAndView(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("hello");
		mav.addObject("address", "ddddddd");
		return mav;
	}
	
	@RequestMapping(value="/testModelAndView1")
	public ModelAndView testModelAndView1(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("hello");
		user.setName("kkkkk");
		user.setAge(100);
		mav.addObject("Object",user);
		return mav;
	}
	
	@RequestMapping("/testPathVariable/{id}/{name}") 
	public String testPathVariable(@PathVariable("id") Integer pk,@PathVariable("name") String name ){ 
		System.out.println("testPathVariable.......id=" + pk);
		System.out.println("testPathVariable.......name=" + name);
		return "success";
	}
	
	@RequestMapping(value="/testRestGet/{id}/{name}",method=RequestMethod.GET)
	public String testRestGET(@PathVariable("id") Integer id,@PathVariable("name") String name){
		System.out.println("testRestGET........id=" + id);
		System.out.println("testRestGET........name=" + name);
		return "success";
	}
	
	@RequestMapping(value="/testRestPOST",method=RequestMethod.POST)
	public String testRestPOST(String aaa,Model model){
		System.out.println("testRestPOST............POSTssssaaa=" + aaa);
		model.addAttribute("param",aaa);
		return "success";
	}
	
	@RequestMapping(value="/testServletAPI",method=RequestMethod.POST)
	public String testServletAPI(HttpServletRequest request,Map<String,String> map){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		map.put("un", username);
		map.put("pw", password);
		System.out.println("lllll");
		return "success";
	}
	
	@RequestMapping(value="/testRequestParam",method=RequestMethod.POST)
	public String testRequestParam(@RequestParam(value="username",required=false)String name,@RequestParam(value="password",defaultValue="123")Integer pass,Model model){
		String inputname = name;
		Integer inputpass = pass;
		model.addAttribute("outnamme", inputname);
		model.addAttribute("outpass", inputpass);
		System.out.println("ddddddd" + inputname + "ddddddd" + inputpass);
		return "success";
	}
	
	@RequestMapping(value="/testRestPUT",method=RequestMethod.PUT)
	public String testRestPUT(@RequestParam(value="inputname")String name,@RequestParam(value="inputpass")Integer pass,Model model){
		String param1 = name;
		Integer param2 = pass;
		model.addAttribute("outnamme", param1);
		model.addAttribute("outpass", param2);
		System.out.println("Test RestPUT PUT dddddddd::: " + name + "," + pass);
		return "success";
	}
	
	@RequestMapping(value="/testRestDelete",method=RequestMethod.DELETE)
	public String testRestDelete(@RequestParam(value="inputname")String name,@RequestParam(value="inputpass")Integer pass,Model model){
		String param1 = name;
		Integer param2 = pass;
		model.addAttribute("outnamme", param1);
		model.addAttribute("outpass", param2);
		System.out.println("Test RestDelete DELETE ddddddd::: " + name + "," + pass);
		return "success";
	}
	
	@RequestMapping(value="/testPOJO",method=RequestMethod.POST)
	public String testPOJO(User user){
		System.out.println(user.toString());
		return "success";
	}
	
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	public String testShowUser(Users users,Model model){
		String name = users.getName();
		String pwd = users.getPwd();
		model.addAttribute("users", users);
		System.out.println("ddddddd,ddddddd " + name + "dddddddd" + pwd);
		return "success";
	}
	
	@RequestMapping("/testCookieValue")
	public String testCookieValue(@CookieValue("JSESSIONID") String sessionid){
		System.out.println("testCookieValue....sessionid="+sessionid);
		return "success";
	}
	
	@RequestMapping("/testRequestHeader")
	public String testRequestHeader(@RequestHeader("Accept-Encoding") String encoding){
		System.out.println("testRequestHeader....encoding="+encoding);
		return "success";
	}
}
