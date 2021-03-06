package com.niit.daoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import com.niit.dao.CategoryDao;
import com.niit.model.Category;
import com.niit.model.Product;

@SuppressWarnings("unused")
@Repository("CategoryDaoImpl")
public class CategoryDaoImpl implements CategoryDao{
	
	@Autowired
	SessionFactory sessionFactory;
	
	public CategoryDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}
	
 public void insertCategory(Category category){
	
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	session.saveOrUpdate(category);
	session.getTransaction().commit();
   }

 
 public List<Category> retrieve(){
	 
	 Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<Category> list = session.createQuery("from Category").list();
		
		session.getTransaction().commit();
		
		return list;
			  
      }
 
 public Category findById(int cid){
	 Session session = sessionFactory.openSession();
	 Category p=null;
	 
	 try {
		 session.beginTransaction();
		 p= session.get(Category.class, cid);
		 session.getTransaction().commit();
	} catch (HibernateException ex) {
		
		ex.printStackTrace();
		session.getTransaction().rollback();
	}
	 
	 return p;
	 
 }
 
 public void deleteCategory(int cid){
	 Session session = sessionFactory.openSession();
	 session.beginTransaction();
	 Category category = (Category)session.get(Category.class, cid);
	 session.delete(category);
	 session.getTransaction().commit();
	 }
 
 public void update(Category c){
	 Session session = sessionFactory.openSession();
	 try{
	 session.beginTransaction();
	 session.update(c);
	 }catch (HibernateException ex) {
		 ex.printStackTrace();
		 session.getTransaction().rollback();
	}
  }
}
