package com.niit.daoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.dao.ProductDao;
import com.niit.model.Category;
import com.niit.model.Product;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;



@SuppressWarnings("unused")
@Repository("ProductDaoImpl")
public class ProductDaoImpl implements ProductDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public ProductDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}
	
 public void insertProduct(Product product){
	
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	session.persist(product);
	session.getTransaction().commit();
}
 
public List<Product> retrieve(){
	 
	 Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<Product> list = session.createQuery("from Product").list();
		
		session.getTransaction().commit();
		
		return list;
			  
      }
 
 public Product findById(int pid){
	 Session session = sessionFactory.openSession();
	 Product p=null;
	 
	 try {
		 session.beginTransaction();
		 p= session.get(Product.class, pid);
		 session.getTransaction().commit();
		 
	} catch (HibernateException ex) {
		
		ex.printStackTrace();
		session.getTransaction().rollback();
		
	}
	 
	 return p;
	 
 }
 
 public List<Product> getProdById(int cid){
	 
	 Session session = sessionFactory.openSession();
	 List<Product> products = null;
		session.beginTransaction();
		products= session.createQuery("from Product where cid=" +cid).list();
		session.getTransaction().commit();
		return products;
 }
 
 public void deleteProduct(int pid){
	 Session session = sessionFactory.openSession();
	 session.beginTransaction();
	 Product product = (Product)session.get(Product.class, pid);
	 session.delete(product);
	 session.getTransaction().commit();
	 }
 
 public void update(Product p){
System.out.println("inside update product 1");
	 Session session = sessionFactory.openSession();
	 System.out.println("inside update product 2");
	 session.beginTransaction();
	 System.out.println("inside update product 3");
	 session.update(p);
	 System.out.println("inside update product 4");
	 session.getTransaction().commit();
	 System.out.println("inside update product last ");

	  
 }
 
 public Product findprodById(int pid){
	 Session session = sessionFactory.openSession();
	 Product p=null;
	 
	 try {
		 session.beginTransaction();
		 p= session.get(Product.class, pid);
		 session.getTransaction().commit();
		 session.close();
	} catch (HibernateException ex) {
		
		ex.printStackTrace();
		session.getTransaction().rollback();
		 session.close();
	}
	 
	 return p;
	 
 }
}
