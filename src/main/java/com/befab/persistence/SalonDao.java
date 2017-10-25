package com.befab.persistence;

import java.util.ArrayList;
import java.util.List;

import com.befab.model.Salon;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.befab.model.Adresse;

import org.hibernate.Query;

public class SalonDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public ArrayList<Adresse> findAll() {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("FROM Adresse");
		tx.commit();
		return (ArrayList<Adresse>) query.list();
	}

	public List<Salon> findNearest(Adresse adresse) {
//		Session session = sessionFactory.getCurrentSession();
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("select c from Salon c join fetch c.adresse where c.adresse.ville = '"+adresse.getVille()+"'");
		//query.setParameter("id", id);
		tx.commit();
		return query.list();



//		Session session = this.sessionFactory.openSession();
//		Transaction tx = session.beginTransaction();
//
//		String quesryString;
//		if(StringUtils.isNotEmpty(adresse.getVille())) {
//			quesryString = "SELECT * FROM Salon where Salon.adresse.ville = "+adresse.getVille();
//
//		} else if (StringUtils.isNotEmpty(adresse.getCodePostal())) {
//			quesryString = "SELECT * FROM Salon where Salon.adresse.codePostale = "+adresse.getCodePostal();
//		} else {
//			quesryString =
////				"SELECT ville, "
////				+ "ACOS( SIN( RADIANS( latitude ) ) * SIN( RADIANS( "+adresse.getLatitude()+" ) ) + COS( RADIANS( adresse.latitude ) ) "
////				+ "* COS( RADIANS( "+adresse.getLatitude()+" )) * COS( RADIANS( adresse.longitude ) - RADIANS( "+adresse.getLongitude()+" )) ) * 6380 AS distance "
//					"SELECT * "
//							+ "FROM Salon "
//							+ "WHERE "
//							+ "ACOS( SIN( RADIANS( Salon.adresse.latitude ) ) * SIN( RADIANS( "+adresse.getLatitude()+") ) "
//							+ "+ COS( RADIANS( Salon.adresse.latitude ) ) * COS( RADIANS( "+adresse.getLatitude()+" )) * COS( RADIANS( Salon.adresse.longitude ) "
//							+ "- RADIANS( "+adresse.getLongitude()+" )) ) * 6380 < 5";
//		}
//
//		Query query = session.createSQLQuery(quesryString)
//				.addEntity(Salon.class);
//		tx.commit();
//		return query.list();
	}

	public void save(Salon salon) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(salon);
		tx.commit();
		session.close();
	}

}
