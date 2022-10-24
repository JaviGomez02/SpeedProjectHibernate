package com.jacaranda.catalogo;

import java.util.Objects;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.jacaranda.shoes.Shoes;

@Entity (name="CATALOGO")
public class Catalogo{
	
	@Id
	@Column (name="ID_CATALOGO")
	private int id;
	@Column (name="NOMBRE")
	private String name;
	@Column (name="DESCRIPCION")
	private String description;
	@OneToMany(mappedBy="idCatalogo")
	private Set<Shoes> shoesList;
	
	public Catalogo() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Catalogo(int id, String name, String description) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Set<Shoes> getShoesList() {
		return shoesList;
	}
	


	public void setShoesList(Set<Shoes> shoesList) {
		this.shoesList = shoesList;
	}


	@Override
	public int hashCode() {
		return Objects.hash(id);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Catalogo other = (Catalogo) obj;
		return id == other.id;
	}


	@Override
	public String toString() {
		return "Catalogo [id=" + id + ", name=" + name + ", description=" + description + ", shoesList=" + shoesList
				+ "]";
	}
	
	
	
	
	
}
