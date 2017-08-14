package com.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.daoImpl.BrandDaoImpl;
import com.niit.daoImpl.CartDaoImpl;
import com.niit.daoImpl.CategoryDaoImpl;
import com.niit.daoImpl.OrderDaoImpl;
import com.niit.daoImpl.ProductDaoImpl;
import com.niit.daoImpl.SupplierDaoImpl;
import com.niit.daoImpl.UserDaoImpl;
import com.niit.model.Cart;
import com.niit.model.Order;
import com.niit.model.User;

@Controller
public class CartController {
	
	

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
			int quantity = Integer.parseInt(req.getParameter("qty"));
			String productName = req.getParameter("name");
			String imageName = req.getParameter("imagename");
			System.out.println("reachead till cart exist");
			Cart cartExists= cartDaoImpl.getCartById(pid, userEmail);
			
			System.out.println("reachead after cart exist");
			if(cartExists==null)
			{
				Cart ct = new Cart();
				ct.setCartPrice(price);
				ct.setCartProductId(pid);
				ct.setCartProductName(productName);
				ct.setCartImage(imageName);
				ct.setCartQuantity(quantity);
				User u = userDaoImpl.findById(userEmail);
				ct.setCartUserDetails(u);
				System.out.println("reachead inside cart exist");
				cartDaoImpl.insert(ct);
				
			}
			 else  if(cartExists!=null)
		     {
			Cart cm = new Cart();
			cm.setCartPrice(price);
			cm.setCartProductId(pid);
			cm.setCartProductName(productName);
			cm.setCartImage(imageName);
			cm.setCartQuantity(quantity);
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
	
	public ModelAndView orderSave(HttpServletRequest req)
	 {
		ModelAndView mav= new ModelAndView("invoice");
		Order ord=new Order();
		Principal principal = req.getUserPrincipal();
		String userEmail = principal.getName();
		Double total= Double.parseDouble(req.getParameter("total"));
		String payment= req.getParameter("payment");
		User user= userDaoImpl.findById(userEmail);
		ord.setUser(user);
		ord.setTotal(total);
		ord.setPayment(payment);
        orderDaoImpl.insertOrders(ord);
        mav.addObject("orderDetails", user);
        return mav;
	 }
        
@RequestMapping(value="/checkout", method = RequestMethod.POST) 

    public ModelAndView checkoutProcess(HttpServletRequest req)
    {   
	ModelAndView mav= new ModelAndView("checkout");
	Principal principal = req.getUserPrincipal();
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
}
