package com.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	CategoryDaoImpl categoryDaoImpl;
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	
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
	
	return "contactus";
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
		m.addAttribute("cataList" , categoryDaoImpl.retrieve());
		m.addAttribute("satList" , supplierDaoImpl.retrieve());
		m.addAttribute("proList" , productDaoImpl.retrieve());
		
	}
	
	@RequestMapping("/productDetail/{cid}")
	public ModelAndView productDet(@RequestParam("cid") int cid)
	{
		
		ModelAndView mav = new ModelAndView();
		Product product = productDaoImpl.findById(cid);
		mav.addObject("product" , product);
		mav.setViewName("productDetail");
		return mav;
		
	}

}
