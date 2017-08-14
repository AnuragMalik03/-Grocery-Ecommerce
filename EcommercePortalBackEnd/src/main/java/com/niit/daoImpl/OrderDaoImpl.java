package com.niit.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.Order;

@SuppressWarnings("unused")
@Repository("OrderDaoImpl")
public class OrderDaoImpl {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public OrderDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}
	
	  public void insertOrders(Order order) {
			Session session= sessionFactory.openSession();
			  session.beginTransaction();
			  
			  // value get nd set from the User(Getter ns Setter method////
			  session.save(order);
			  session.getTransaction().commit();	
			  
	  }
	  
		public List<Order> findOrderById(String userId) 
		{
		Session session= sessionFactory.openSession();
		List<Order> or =null;
		try {
		session.beginTransaction();
		or =(List<Order>) session.createQuery("from Cart where userMailId=: email").setString("email", userId).list();
		session.getTransaction().commit();
		}
		catch (HibernateException ex)
		{
		 ex.printStackTrace();
		 session.getTransaction().rollback(); // It will not fetch the Id
		}
		return or;
		}
		
		
		public Cart getCartById(int cartId , String userEmail){
			 Session session = sessionFactory.openSession();
			 Cart c = null;
			 	
				 session.beginTransaction();
				 c= (Cart) session.createQuery("from Cart where userMailId=: email and cartProductId=: id").setString("email" , userEmail).setInteger("id", cartId).uniqueResult();
				 session.getTransaction().commit();
			
			 
			 return c;
			 
		 }
		 
		 public void deleteCart(int orderId){
			 Session session = sessionFactory.openSession();
			 session.beginTransaction();
			 Order or = (Order)session.get(Order.class, orderId);
			 session.delete(or);
			 session.getTransaction().commit();
			 }
		 
		 public void update(Order or){
			 Session session = sessionFactory.openSession();
			 try{
			 session.beginTransaction();
			 session.update(or);
			 }catch (HibernateException ex) {
				 ex.printStackTrace();
				 session.getTransaction().rollback();
			}
		  }


}
