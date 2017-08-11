package com.niit.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.BrandDao;
import com.niit.model.Brand;
import com.niit.model.Supplier;

@SuppressWarnings("unused")
@Repository("BrandDaoImpl")
public class BrandDaoImpl implements BrandDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public BrandDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
        }
	
public void insertBrand(Brand brand){
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(brand);
		session.getTransaction().commit();
	}
	
	public List<Brand> retrieve(){
		 
		 Session session = sessionFactory.openSession();
			session.beginTransaction();
			List<Brand> list = session.createQuery("from Brand").list();
			
			session.getTransaction().commit();
			
			return list;
				  
	      }
	 
	 public Brand findById(int bid){
		 Session session = sessionFactory.openSession();
		 Brand b =null;
		 
		 try {
			 session.beginTransaction();
			 b= session.get(Brand.class, bid);
			 session.getTransaction().commit();
		} catch (HibernateException ex) {
			
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		 
		 return b;
		 
	 }
	 public void deleteBrand(int bid){
		 Session session = sessionFactory.openSession();
		 session.beginTransaction();
		 Brand brand = (Brand)session.get(Brand.class, bid);
		 session.delete(brand);
		 session.getTransaction().commit();
		 }
	 
	 public void update(Brand b){
		 Session session = sessionFactory.openSession();
		 try{
		 session.beginTransaction();
		 session.update(b);
		 }catch (HibernateException ex) {
			 ex.printStackTrace();
			 session.getTransaction().rollback();
		}
}

}
