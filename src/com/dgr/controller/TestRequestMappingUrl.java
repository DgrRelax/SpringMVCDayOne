package com.dgr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("mvc")
@Controller
public class TestRequestMappingUrl {

	@RequestMapping(value="/testMethod",method=RequestMethod.POST)
	public String testMethod(){
		System.out.println("testMethod.................");
		return "success";
	}
	
	@RequestMapping(value="/testParams",params={"name","age!=20","sex=1"})
	public String testParams(){
		System.out.println("testParams............");//syso ��� �� sout ���
		return "success";
	}
	
	@RequestMapping("/testAntUrl/**/ab?c")
	public String testAntUrl(){
		System.out.println("testAntUrl.................");
		return "success";
	}
	
	
}
