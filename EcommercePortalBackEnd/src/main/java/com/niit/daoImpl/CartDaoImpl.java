package com.niit.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.CartDao;
import com.niit.model.Cart;
import com.niit.model.Category;

@SuppressWarnings("deprecation")
@Repository("CartDaoImpl")
public class CartDaoImpl implements CartDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public CartDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	public void insert(Cart cart)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.persist(cart);
		session.getTransaction().commit();
	}
	
	public List<Cart> findCartById(String userId) 
	{
	Session session= sessionFactory.openSession();
	List<Cart> cr =null;
	try {
		
		System.out.println("reachead inside try of findcartbyid ");
	session.beginTransaction();
	cr =(List<Cart>)session.createQuery("from Cart where userMailId= :email").setString("email", userId).list();
	session.getTransaction().commit();
	System.out.println("reachead end of tryblock of findcartbyid ");
	}
	catch (HibernateException ex)
	{
	 ex.printStackTrace();
	 session.getTransaction().rollback(); // It will not fetch the Id
	}
	return cr;
	}
	
	
	public Cart getCartById(int cartId , String userEmail){
		 Session session = sessionFactory.openSession();
		 Cart c = null;
		 System.out.println("reachead inside getCartbyid");
		 	
			 session.beginTransaction();
			 c= (Cart) session.createQuery("from Cart where userMailId= :email and cartProductID= :id").setString("email" , userEmail).setInteger("id", cartId).uniqueResult();
			 session.getTransaction().commit();
			 System.out.println("reachead end of getCartbyid");
		 
		 return c;
		 
	 }
	 
	 public void deleteCart(int cartId){
		 Session session = sessionFactory.openSession();
		 session.beginTransaction();
		 Cart cr = (Cart)session.get(Cart.class, cartId);
		 session.delete(cr);
		 session.getTransaction().commit();
		 }
	 
	 public void update(Cart cr){
		 Session session = sessionFactory.openSession();
		 try{
		 session.beginTransaction();
		 session.update(cr);
		 }catch (HibernateException ex) {
			 ex.printStackTrace();
			 session.getTransaction().rollback();
		}
	  }

	
}
