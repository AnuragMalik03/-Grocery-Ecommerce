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
import com.niit.model.Product;
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
		String payment= request.getParameter("payment");

		String shipName = request.getParameter("sname");
		String shipadd1 = request.getParameter("sadd1");
		String shipadd2 = request.getParameter("sadd2");
		String shipcity = request.getParameter("scity");
		String shipstate = request.getParameter("sstate");
		String shipzip = request.getParameter("szip");
			
		List<String> list = new ArrayList<String>();
		list.add(shipName);
		list.add(shipadd1);
		list.add(shipadd2);
		list.add(shipcity);
		list.add(shipstate);
		list.add(shipzip);
		mav.addObject("list", list);
		System.out.println("after list creation");
		User user= userDaoImpl.findById(userEmail);
		List<Cart> cart = cartDaoImpl.findCartById(userEmail);
		System.out.println(cart);
		ord.setUser(user);
		ord.setTotal(total);
		ord.setPayment(payment);
        orderDaoImpl.insertOrders(ord);
        mav.addObject("order", ord);
        mav.addObject("cart", cart);
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
	
	for (Cart cartItem : cart) {

		System.out.println("inside forEach loop");
		int pid = cartItem.getCartProductId();
		
		System.out.println("after getting cart product id for a particular product");
		Product prod = productDaoImpl.findprodById(pid) ;
		System.out.println("after getting pid from product table ");
		int stock = prod.getStock();
		System.out.println("after getting stock from product table");
		int qty = cartItem.getCartQuantity(); // Finding total quantities purchased
										// by user.
					
		System.out.println("after getting quantity");
		
					
		if(qty == stock)
		{
			prod.setStock(0);
			System.out.println("inside if block");
		}
        
		if(qty!=stock)
		{
		prod.setStock(stock - qty);
		System.out.println("inside another if block");
		}
		
		productDaoImpl.update(prod);

	}
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
   
   @RequestMapping("/thankYou")
   public ModelAndView thankyou( HttpServletRequest req) 
    {
	   ModelAndView mv= new ModelAndView();
	   Principal principal = req.getUserPrincipal();
	   String userEmail =principal.getName();
	   User user =userDaoImpl.findById(userEmail);
		
	  List<Cart> cart = cartDaoImpl.findCartById(userEmail);
	 
	  for(Cart cartItem : cart){
	  int id = cartItem.getCartId();
	  cartDaoImpl.deleteCart(id);
	
	  }
       
       mv.setViewName("thanks");
       return mv;
   
    
 }  
 
   
}
