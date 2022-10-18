package com.jacaranda.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.jacaranda.shoes.Shoes;


public class CRUDShoe {
	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session session;
	
	public CRUDShoe() {
		super();
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
	}
	public Shoes readShoe(int id) {
		Shoes p=null;
		try {
			p= (Shoes) session.get(Shoes.class,id);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return p;
	}
	public boolean add(Shoes s) {
		boolean resultado=false;
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(s);
			session.getTransaction().commit();
			resultado=true;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resultado;
	}
}
