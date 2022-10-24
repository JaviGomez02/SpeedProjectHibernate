package com.jacaranda.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.jacaranda.catalogo.Catalogo;

public class CRUDCatalogo {
	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session session;
	
	public CRUDCatalogo() {
		super();
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
	}
	public List<Catalogo> loadList(){

		List<Catalogo> listCatalogo= new ArrayList<>();
		Query query=session.createQuery("SELECT c FROM CATALOGO c");
		listCatalogo= query.getResultList();
		return listCatalogo;
		
	}
	
	
	public Catalogo readCatalogo(int id) {
		Catalogo c=null;
		try {
			c= (Catalogo) session.get(Catalogo.class,id);
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return c;
	}
	
	public boolean addCatalogo(Catalogo c) {
		boolean resultado=false;
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(c);
			session.getTransaction().commit();
			resultado=true;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resultado;
	}
	
	public boolean deleteCatalogo(Catalogo c) {
		boolean resultado=false;
		try {
			Catalogo cNew= (Catalogo) session.get(Catalogo.class,c.getId());
			session.getTransaction().begin();
			session.delete(cNew);	
			session.getTransaction().commit();
			resultado=true;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resultado;
	}
	public boolean updateUser(Catalogo c, String name, String description) {
		boolean resultado=false;
		try {
			Catalogo cNew= (Catalogo) session.get(Catalogo.class,c.getId());
			
			cNew.setName(name);
			cNew.setDescription(description);
			session.getTransaction().begin();
			session.update(cNew);
			session.getTransaction().commit();
			resultado=true;
		}catch(Exception e){
			System.out.println("Error");
			System.out.println(e);
		}
		return resultado;
		}
	
}
