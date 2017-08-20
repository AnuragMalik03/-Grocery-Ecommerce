package com.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.daoImpl.AddressDaoImpl;
import com.niit.daoImpl.BrandDaoImpl;
import com.niit.daoImpl.CartDaoImpl;
import com.niit.daoImpl.CategoryDaoImpl;
import com.niit.daoImpl.OrderDaoImpl;
import com.niit.daoImpl.ProductDaoImpl;
import com.niit.daoImpl.SupplierDaoImpl;
import com.niit.daoImpl.UserDaoImpl;
import com.niit.model.Address;
import com.niit.model.Cart;

import com.niit.model.Order;
import com.niit.model.Supplier;
import com.niit.model.User;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	
	@Autowired
	AddressDaoImpl addressDaoImpl;

	@Autowired
	OrderDaoImpl orderDaoImpl;
	@Autowired
	UserDaoImpl userDaoImpl;
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	@Autowired
	BrandDaoImpl brandDaoImpl;
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	@Autowired
	ProductDaoImpl productDaoImpl;
	@Autowired
	CartDaoImpl  cartDaoImpl;
	
	
	@RequestMapping("/cart")
	public String addPage(){
		return "cart";
	}
	
	@RequestMapping(value="/addToCart" , method=RequestMethod.POST)
	public ModelAndView addToCart(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView();
		Principal principal = req.getUserPrincipal();
		String userEmail = principal.getName();
		try {
			
			int pid = Integer.parseInt(req.getParameter("pId"));
			
			Double price = Double.parseDouble(req.getParameter("pPrice"));
			int quantity = Integer.parseInt(req.getParameter("quant"));
			String productName = req.getParameter("name");
			String imageName = req.getParameter("imagename");
			System.out.println("reachead till cart exist");
			Cart cartExist= cartDaoImpl.getCartById(pid, userEmail);
			
			System.out.println("reachead after cart exist");
			if(cartExist==null)
			{
				Cart ct = new Cart();
				ct.setCartPrice(price);
				ct.setCartProductId(pid);
				ct.setCartProductName(productName);
				ct.setCartImage(imageName);
				ct.setCartQuantity(quantity);
				User u = userDaoImpl.findById(userEmail);
				ct.setCartUserDetails(u);
				cartDaoImpl.insert(ct);
				
			}
			 else  if(cartExist!=null)
		     {
			Cart cm = new Cart();
			cm.setCartId(cartExist.getCartId());
			cm.setCartPrice(price);
			cm.setCartProductId(pid);
			cm.setCartProductName(productName);
			cm.setCartImage(imageName);
			cm.setCartQuantity(cartExist.getCartQuantity()+quantity);
			User u =userDaoImpl.findById(userEmail);
			cm.setCartUserDetails(u);
			cartDaoImpl.update(cm);
			System.out.println("reachead inside cart update");
		   }

			System.out.println("to check the cart info variable");
			mv.addObject("cartInfo" , cartDaoImpl.findCartById(userEmail));
			mv.setViewName("cart");
			System.out.println("reachead final end of cart ");
			return mv;
			
			
		} catch (Exception e) {
			mv.setViewName("cart");
			return mv;
		}
		
	}
	
@RequestMapping(value="/invoiceprocess", method = RequestMethod.POST) 
	
	public ModelAndView orderSave(HttpServletRequest request)
	 {
		ModelAndView mav= new ModelAndView("invoice");
		Order ord=new Order();
		Principal principal = request.getUserPrincipal();
		String userEmail = principal.getName();
		Double total= Double.parseDouble(request.getParameter("total"));
		String payment= request.getParameter("pay");
	/*	String add1 = request.getParameter("address1");
		String add2 = request.getParameter("address2");
		String city = request.getParameter("city");
		String state = request.getParameter("state");	
		String country = request.getParameter("country");
		
		
		ArrayList<String> list = new ArrayList<String>();
		list.add(request.getParameter("address"));
		list.add(request.getParameter("add"));
		list.add(request.getParameter("city"));
		list.add(request.getParameter("state"));
		list.add(request.getParameter("country"));
		list.add(userEmail);
		mav.addObject("list", list);
		System.out.println(list);*/
		User user= userDaoImpl.findById(userEmail);
		ord.setUser(user);
		ord.setTotal(total);
		ord.setPayment(payment);
        orderDaoImpl.insertOrders(ord);
        mav.addObject("orderDetails", user);
        return mav;
	 }
        

/*@RequestMapping(value="/addAddress" , method=RequestMethod.GET)
public ModelAndView saveAddress(HttpServletRequest req ){
	
	ModelAndView mv = new ModelAndView();
	Principal principal = req.getUserPrincipal();
	String userEmail = principal.getName();
	System.out.println("reachead start get address");
	Address checking = addressDaoImpl.getAddrById(userEmail);
	System.out.println("reachead at check point");
	if(checking==null){
		Address check = new  Address();
		check.setfName(req.getParameter("first"));
		check.setlName(req.getParameter("last"));
	check.setAddress1(req.getParameter("address1"));
	check.setUser(userDaoImpl.findById(req.getParameter("userEmail")));
	check.setCity(req.getParameter("city"));
	check.setState(req.getParameter("state"));
	check.setAddress2(req.getParameter("address2"));
	check.setPincode(Integer.parseInt(req.getParameter("pincode")));
	check.setCountry(req.getParameter("country"));
	addressDaoImpl.insert(check);
	
	}
	else if(checking != null) {
		
		mv.setViewName("index");
		
	}
	
	return mv;



}*/
	
	
	

@RequestMapping(value="/checkout", method = RequestMethod.GET) 

    public ModelAndView checkoutProcess(HttpServletRequest request)
    {   
	ModelAndView mav= new ModelAndView("checkout");
	Principal principal = request.getUserPrincipal();
	String userEmail = principal.getName();
	User user=userDaoImpl.findById(userEmail);
	List<Cart> cart = cartDaoImpl.findCartById(userEmail);
	mav.addObject("user", user);
	mav.addObject("cart", cart);
	return mav;
    }
    
   @RequestMapping("/deleteCart/{cartId}")
     public ModelAndView deleteCartItem(@PathVariable("cartId") int cartId, HttpServletRequest req) 
      {
	   ModelAndView mv= new ModelAndView("checkout");
	   Principal principal = req.getUserPrincipal();
	   String userEmail =principal.getName();
       cartDaoImpl.deleteCart(cartId);
       mv.addObject("cartInfo", cartDaoImpl.findCartById(userEmail));
       mv.setViewName("cart");
       return mv;
     
      
   }     
   
   @RequestMapping("/goToCart")
   public ModelAndView showCartItem( HttpServletRequest req) 
    {
	   ModelAndView mv= new ModelAndView();
	   Principal principal = req.getUserPrincipal();
	   String userEmail =principal.getName();
       mv.addObject("cartInfo", cartDaoImpl.findCartById(userEmail));
       mv.setViewName("cart");
       return mv;
   
    
 }     
 
   
}
