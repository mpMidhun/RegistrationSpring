package com.spring;
import been.*;
import dao.*;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RegistrationControlller {
	
		@RequestMapping(value="/Registration", method = RequestMethod.GET)
		public String init(Model model){
		model.addAttribute("msg","Registration Form");	
		return "RegistrationPage";	
		}
		int i=0;
		@RequestMapping( method = RequestMethod.POST)
		public String  Registernow(Model model,@ModelAttribute("rb") RegBean rb ){
		//System.out.println(rb.getName()+","+rb.getAddress()+" "+rb.getAge());
		RegDao rd = new RegDao();
		i=rd.register(rb);
		model.addAttribute("msg",""+rb.getName()+"");
		if(i==1)
		return "success";
		else 
		return "error";
		}
}