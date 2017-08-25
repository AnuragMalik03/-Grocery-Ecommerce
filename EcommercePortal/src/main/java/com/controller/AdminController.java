package com.controller;


import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.niit.daoImpl.*;
import com.niit.model.*;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	@Autowired
	BrandDaoImpl brandDaoImpl;
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	@RequestMapping("/adding")
	public String addPage(){
		return "adding";
	}
	
	@RequestMapping(value="/savecat" , method=RequestMethod.POST)
	@Transactional
	public ModelAndView saveCategory(@RequestParam("name")  String  name ){
		
		ModelAndView mav = new ModelAndView();
		Category c = new Category();
		    c.setName(name);
		    categoryDaoImpl.insertCategory(c);
			mav.setViewName("redirect:/index");
			return mav;
		
	}
	
	@RequestMapping(value="/savesupp" , method=RequestMethod.POST)
	@Transactional
	public ModelAndView saveSupplier(@RequestParam("supplierName")  String  name ){
		
		ModelAndView mav = new ModelAndView();
		Supplier ss = new Supplier();
		    ss.setSupplierName(name);
		    supplierDaoImpl.insertSupplier(ss);
			mav.setViewName("redirect:/index");
			return mav;
		
	}
	@RequestMapping(value="/savebrand" , method=RequestMethod.POST)
	@Transactional
	public String saveBrand(HttpServletRequest request , @RequestParam("file") MultipartFile file){
		
		Brand brand=  new Brand();
		brand.setBrandName(request.getParameter("brandName"));
		/*prod.setPrice(Float.parseFloat(request.getParameter("pPrice")));
		prod.setDescription(request.getParameter("pDescription"));
		prod.setStock(Integer.parseInt(request.getParameter("pStock")));
		prod.setCategory(categoryDaoImpl.findById(Integer.parseInt(request.getParameter("pCategory"))));
		prod.setSupplier(supplierDaoImpl.findById(Integer.parseInt(request.getParameter("pSupplier"))));
		prod.setBrand(brandDaoImpl.findById(Integer.parseInt(request.getParameter("pBrand"))));*/
		
		String filepath= request.getSession().getServletContext().getRealPath("/");
		String filename = file.getOriginalFilename();
		brand.setBimgName(filename);
		brandDaoImpl.insertBrand(brand);
		System.out.println("File path is" + filepath + " " + filename);
		try {
			byte  imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+ "/resources/" + filename));
			fos.write(imagebyte);
			fos.close();			
			
		} catch (HibernateException e) {
			e.printStackTrace();
		}catch (Exception e){
		e.printStackTrace();
		}
		
		
		return "redirect:/index";
		
	}
	/*@RequestMapping(value="/savebrand" , method=RequestMethod.POST)
	public ModelAndView saveBrand(@RequestParam("bid") int bid, @RequestParam("brandName")  String  name ){
		
		ModelAndView mav = new ModelAndView();
		Brand bd = new Brand();
		    bd.setBid(bid);
		    bd.setBrandName(name);
		    brandDaoImpl.insertBrand(bd);
			mav.setViewName("index");
			return mav;
		
	}*/
	
	@ModelAttribute
	public void addAttributes(Model m){
		m.addAttribute("catList" , categoryDaoImpl.retrieve());
		m.addAttribute("satList" , supplierDaoImpl.retrieve());
		m.addAttribute("prodList" , productDaoImpl.retrieve());
		m.addAttribute("brdList" , brandDaoImpl.retrieve());
		
	}
	
	@RequestMapping(value="/saveProduct" , method=RequestMethod.POST)
	public String saveProduct(HttpServletRequest request , @RequestParam("file") MultipartFile file){
		
		Product prod=  new Product();
		prod.setName(request.getParameter("pname"));
		prod.setPrice(Float.parseFloat(request.getParameter("pPrice")));
		prod.setDescription(request.getParameter("pDescription"));
		prod.setStock(Integer.parseInt(request.getParameter("pStock")));
		prod.setCategory(categoryDaoImpl.findById(Integer.parseInt(request.getParameter("pCategory"))));
		prod.setSupplier(supplierDaoImpl.findById(Integer.parseInt(request.getParameter("pSupplier"))));
		prod.setBrand(brandDaoImpl.findById(Integer.parseInt(request.getParameter("pBrand"))));
		
		String filepath= request.getSession().getServletContext().getRealPath("/");
		String filename = file.getOriginalFilename();
		prod.setImgName(filename);
		productDaoImpl.insertProduct(prod);
		System.out.println("File path file" + filepath + " " + filename);
		try {
			byte  imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+ "/resources/" + filename));
			fos.write(imagebyte);
			fos.close();			
			
		} catch (HibernateException e) {
			e.printStackTrace();
		}catch (Exception e){
		e.printStackTrace();
		}
		
		
		return "redirect:/index";
		
	}
	
	@RequestMapping("/productList")
	public ModelAndView productList()
	{
		ModelAndView mav = new ModelAndView();
		mav.addObject("productList" , productDaoImpl.retrieve());
		mav.setViewName("productList");
		return mav;
		
	}
	
	@RequestMapping("/deleteProduct/{id}")
	public String delete(@PathVariable("id") int pid){
		productDaoImpl.deleteProduct(pid);
		return "redirect:/admin/productList?del";
	}
	
	@RequestMapping("/updateProduct")
	public ModelAndView update(@RequestParam("id") int pid){
		ModelAndView mav = new ModelAndView();
		Product p = productDaoImpl.findById(pid);
		mav.addObject("prod" , p);
		mav.addObject("cList" , categoryDaoImpl.retrieve());
		mav.addObject("sList" , supplierDaoImpl.retrieve());
		mav.addObject("bList" , brandDaoImpl.retrieve());
		mav.setViewName("updateProduct");
		return mav;
	}
	
	@RequestMapping(value="/productUpdate" , method=RequestMethod.POST)
	public ModelAndView editProduct(HttpServletRequest request , @RequestParam("file") MultipartFile file){
		
		ModelAndView mv = new ModelAndView();
		
		int pid = (Integer.parseInt(request.getParameter("pid"))) ;
		String pname = request.getParameter("pName");
		String pCat = request.getParameter("pCategory");
		String pSup = request.getParameter("pSupplier");
		String pBrd = request.getParameter("pBrand");
		String pPrice = request.getParameter("pPrice");
		String pStock = request.getParameter("pStock");
		String pDesc = request.getParameter("pDescription");
		
		
		Product prod2=  new Product();
		prod2.setId(pid);
		prod2.setName(pname);
		prod2.setPrice(Float.parseFloat(pPrice));
		prod2.setDescription(pDesc);
		prod2.setStock(Integer.parseInt(pStock));
		prod2.setCategory(categoryDaoImpl.findById(Integer.parseInt(pCat)));
		prod2.setSupplier(supplierDaoImpl.findById(Integer.parseInt(pSup)));
		prod2.setBrand(brandDaoImpl.findById(Integer.parseInt(pBrd)));
		
		String filepath= request.getSession().getServletContext().getRealPath("/");
		String filename = file.getOriginalFilename();
		prod2.setImgName(filename);
		productDaoImpl.update(prod2);
		System.out.println("File path file" + filepath + " " + filename);
		try {
			byte  imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+ "/resources/" + filename));
			fos.write(imagebyte);
			fos.close();
			
		} catch (HibernateException e) {
			e.printStackTrace();
		}catch (Exception e){
		e.printStackTrace();
		}
		
		mv.setViewName("redirect:/admin/productList?update");
		return mv;
		
	}

}
