package com.jacaranda.dao;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.jacaranda.catalogo.Catalogo;
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
	public boolean addShoe(Shoes s) {
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
	public boolean deleteShoe(Shoes s) {
		boolean resultado=false;
		try {
			Shoes sNew= (Shoes) session.get(Shoes.class,s.getIdShoes());
			session.getTransaction().begin();
			session.delete(sNew);	
			session.getTransaction().commit();
			resultado=true;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resultado;
	}
	public List<Shoes> loadList(){

		List<Shoes> list= new ArrayList<>();
		Query query=session.createQuery("SELECT z FROM ZAPATILLA z");
		list= query.getResultList();
		return list;
		
	}
	
	public boolean updateShoe(Shoes s, String nombre, double price, int sizes, LocalDate releasedate, boolean stock) {
		boolean resultado=false;
		try {
			Shoes sNew= (Shoes) session.get(Shoes.class,s.getIdShoes());
			sNew.setName(nombre);
			sNew.setPrice(price);
			sNew.setSizes(sizes);
			sNew.setReleaseDate(releasedate);
			sNew.setStock(stock);
			
			session.getTransaction().begin();
			session.saveOrUpdate(sNew);
			session.getTransaction().commit();
			resultado=true;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resultado;
	}
}
