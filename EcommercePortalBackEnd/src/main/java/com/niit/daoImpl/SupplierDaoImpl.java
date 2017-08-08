package com.niit.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.dao.SupplierDao;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;


@SuppressWarnings("unused")
@Repository("SupplierDaoImpl")
public class SupplierDaoImpl implements SupplierDao{

	
	@Autowired
	SessionFactory sessionFactory;
	
	public SupplierDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
        }
	
	public void insertSupplier(Supplier supplier){
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(supplier);
		session.getTransaction().commit();
	}
	
	public List<Supplier> retrieve(){
		 
		 Session session = sessionFactory.openSession();
			session.beginTransaction();
			List<Supplier> list = session.createQuery("from Supplier").list();
			
			session.getTransaction().commit();
			
			return list;
				  
	      }
	 
	 public Supplier findById(int pid){
		 Session session = sessionFactory.openSession();
		 Supplier s=null;
		 
		 try {
			 session.beginTransaction();
			 s= session.get(Supplier.class, pid);
			 session.getTransaction().commit();
		} catch (HibernateException ex) {
			
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		 
		 return s;
		 
	 }
	 public void deleteSupplier(int sid){
		 Session session = sessionFactory.openSession();
		 session.beginTransaction();
		 Supplier supplier = (Supplier)session.get(Supplier.class, sid);
		 session.delete(supplier);
		 session.getTransaction().commit();
		 }
	 
	 public void update(Supplier s){
		 Session session = sessionFactory.openSession();
		 try{
		 session.beginTransaction();
		 session.update(s);
		 }catch (HibernateException ex) {
			 ex.printStackTrace();
			 session.getTransaction().rollback();
		}
}
}
