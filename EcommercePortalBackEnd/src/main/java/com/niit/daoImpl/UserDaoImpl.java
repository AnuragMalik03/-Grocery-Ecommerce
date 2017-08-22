package com.niit.daoImpl;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import com.niit.dao.UserDao;
import com.niit.model.Address;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.User;



@Repository("UserDaoImpl")
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public UserDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}
	
 public void insertUser(User user){
	
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	session.saveOrUpdate(user);
	session.getTransaction().commit();
    }
 
 public User findById(String  email){
	 Session session = sessionFactory.openSession();
	 User p=null;
	 
	 try {
		 session.beginTransaction();
		 p= session.get(User.class, email);
		 session.getTransaction().commit();
	} catch (HibernateException ex) {
		
		ex.printStackTrace();
		session.getTransaction().rollback();
	}
	 
	 return p;
	 
 }
 
 public void update(User user){
	 Session session = sessionFactory.openSession();
	 session.beginTransaction();
	 session.update(user);
	 session.getTransaction().commit();

	  
 }
 
}
