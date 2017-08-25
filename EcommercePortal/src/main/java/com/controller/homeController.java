package com.controller;


import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.niit.daoImpl.*;
import com.niit.model.*;

@Controller
public class homeController {
	
	@RequestMapping("/")
	public String index(){
		
		return "index";
	}
	
	@RequestMapping("/index")
	public String home(){
		
		return "index";
	}
	

	
	@Autowired
	UserDaoImpl userDaoImpl;
	
	@Autowired
	AddressDaoImpl addressDaoImpl;
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	@Autowired
	ProductDaoImpl productDaoImpl;
	@Autowired
	BrandDaoImpl brandDaoImpl;
	
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
		public ModelAndView showRegister(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("user" , new User());
		mav.setViewName("register");
		
		return mav ;
	}
	
	@RequestMapping("/about")
	public String about(){
	
	return "aboutus";
}

	@RequestMapping("/userLogged")
	public String userLogged(){
	
	return "redirect:/index";
}
	
	@RequestMapping("/error")
	public String error(){
	
	return "/error";
}
	

	@RequestMapping("/login")
	public String login(){
	
	return "login";
}
	
	@RequestMapping("/contact")
	public String contact(){
	
	return "contact";
}
	
	/*@RequestMapping("/gotologin")
	public ModelAndView goToLogin(){
		ModelAndView mav = new ModelAndView();
	mav.setViewName("login");
	return mav;
}*/
	
	
	@RequestMapping(value="/saveregister" , method= RequestMethod.POST)
	public ModelAndView saveregister(@Valid @ModelAttribute("user") User user, BindingResult result ){
		
		ModelAndView mav = new ModelAndView();
		
		if(result.hasErrors()){
			
			mav.setViewName("register");
			return mav;
		}
		else {
			user.setRole("ROLE_USER");
			userDaoImpl.insertUser(user);
			mav.addObject("user", user);
			mav.setViewName("redirect:/login");
			return mav;
		}
	}
	
	@RequestMapping("/productCustList")
	public ModelAndView productcustList(@RequestParam("cid") int cid)
	{
		System.out.println(cid);
		ModelAndView mav = new ModelAndView("productCustList");
		mav.addObject("productList" , productDaoImpl.getProdById(cid));
		//mav.setViewName("");
		return mav;
		
	}
	
	@ModelAttribute
	public void addAttributes(Model m){
		m.addAttribute("catList" , categoryDaoImpl.retrieve());
		m.addAttribute("satList" , supplierDaoImpl.retrieve());
		m.addAttribute("proList" , productDaoImpl.retrieve());
		m.addAttribute("broList" , brandDaoImpl.retrieve());
		
		
	}
	
	@RequestMapping("/productDetail/{cid}")
	public ModelAndView productDet(@PathVariable("cid") int cid)
	{
		
		ModelAndView mav = new ModelAndView();
		Product product = productDaoImpl.findById(cid);
		mav.addObject("product" , product);
		mav.setViewName("productDetail");
		return mav;
		
	}
	
	@RequestMapping("/userName")
	public ModelAndView  userInput(HttpServletRequest request)
	{
		
		ModelAndView mav = new ModelAndView("userName");
		
		/*String userId=request.getParameter("username");
		if(userId != ""){
		User user = userDaoImpl.findById(userId);
		mav.addObject("user", user);
		}*/
		return mav;
		
	}
	
	@RequestMapping(value="/reset" , method= RequestMethod.POST)
	public ModelAndView  reset(HttpServletRequest request)
	{
		
		ModelAndView mav = new ModelAndView();
		String userId = request.getParameter("username");
		
		User user = userDaoImpl.findById(userId);
		String answer = request.getParameter("answer") ;
		String actual = user.getSecurityA();
		System.out.println(actual);
		System.out.println(answer);
		mav.addObject("user", user);
		if( answer.equals(actual)){
			mav.setViewName("passwordReset");
			return mav;
		
		}
		else{
		mav.setViewName("securityAnswer");
		return mav;}
	}
		
	
	
	@RequestMapping(value="/SecurityAnswer", method= RequestMethod.POST)
	public ModelAndView SecAns(HttpServletRequest request)
	{
		ModelAndView mav = new ModelAndView("securityAnswer");
		
        String userId = request.getParameter("username");
		
		User user = userDaoImpl.findById(userId);
		
		mav.addObject("user", user);
		
		return mav;
	}
	
	
	@RequestMapping(value="/updateUser" , method= RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		System.out.println("inside method");
		 String userId = request.getParameter("email");
		 User user = userDaoImpl.findById(userId);
		 String pass= request.getParameter("password");
		 
		 user.setPassword(pass);
		 System.out.println("after password");
		 /*user.setAddrs1(user.getAddrs1());
		 user.setAddrs2(user.getAddrs2());
		 user.setPhone(user.getPhone());
		 user.setSecurityQ(user.getSecurityQ());*/
		 userDaoImpl.update(user);
		 System.out.println("after user update");
		mav.setViewName("login");
		return mav;
	}
	
	
}
