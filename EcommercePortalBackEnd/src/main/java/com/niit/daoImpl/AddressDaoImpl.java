package com.niit.daoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.AddressDao;
import com.niit.model.Address;
import com.niit.model.Cart;

import com.niit.model.Product;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;



@SuppressWarnings("deprecated")
@Repository("AddressDaoImpl")
public class AddressDaoImpl implements AddressDao {

	
	@Autowired
	SessionFactory sessionFactory;
	
	public AddressDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}
	
	
	 public void insertAddr(Address address){
			
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(address);
			session.getTransaction().commit();
		   }
	 
	 
	public List<Address> retrieve(){
		 
		 Session session = sessionFactory.openSession();
			session.beginTransaction();
			List<Address> list = session.createQuery("from Address").list();
			
			session.getTransaction().commit();
			
			return list;
				  
	      }
	 
	 public Address findById(int addrid){
		 Session session = sessionFactory.openSession();
		 Address a=null;
		 
		 try {
			 session.beginTransaction();
			 a= session.get(Address.class, addrid);
			 session.getTransaction().commit();
		} catch (HibernateException ex) {
			
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		 
		 return a;
		 
	 }
	 
	 public Address getAddrById( String userEmail){
		 Session session = sessionFactory.openSession();
		 Address a = null;
		 System.out.println("reachead inside getaddrbyid");
		 	
			 session.beginTransaction();
			 a= (Address) session.createQuery("from Address where userEmail= :email ").setString("email" , userEmail).uniqueResult();
			 session.getTransaction().commit();
			 System.out.println("reachead end of address");
		 
		 return a;
		 
	 }
	 
	/* public void deleteAddress(int checkid){
		 Session session = sessionFactory.openSession();
		 session.beginTransaction();
		 Checkout checkout = (Checkout)session.get(Checkout.class, checkid);
		 session.delete(checkout);
		 session.getTransaction().commit();
		 }*/
	 
	 public void update(Address ad){
		 Session session = sessionFactory.openSession();
		 session.beginTransaction();
		 session.update(ad);
		 session.getTransaction().commit();

		  
	 }
}
