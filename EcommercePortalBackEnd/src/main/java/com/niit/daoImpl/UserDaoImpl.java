package com.niit.daoImpl;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import com.niit.dao.UserDao;
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
}
