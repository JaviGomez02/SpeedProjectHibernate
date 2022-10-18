package com.jacaranda.shoes;

import java.time.LocalDate;
import java.util.Date;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity (name="ZAPATILLA")
public class Shoes {
	

	@Id
	@Column (name="ID")
	private int idShoes;
	@Column (name="NAME")
	private String name;
	@Column (name="PRICE")
	private double price;
	@Column (name="SIZES")
	private int sizes;
	@Column (name="RELEASEDATE")
	private LocalDate releaseDate;
	@Column (name="STOCK")
	private boolean stock;
	
	public Shoes() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Shoes(int idShoes, String name, double price, int sizes, LocalDate releaseDate, boolean stock) {
		super();
		this.idShoes = idShoes;
		this.name = name;
		this.price = price;
		this.sizes = sizes;
		this.releaseDate = releaseDate;
		this.stock = stock;
	}

	public int getIdShoes() {
		return idShoes;
	}

	public void setIdShoes(int idShoes) {
		this.idShoes = idShoes;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getSizes() {
		return sizes;
	}

	public void setSizes(int sizes) {
		this.sizes = sizes;
	}

	public LocalDate getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(LocalDate releaseDate) {
		this.releaseDate = releaseDate;
	}

	public boolean isStock() {
		return stock;
	}

	public void setStock(boolean stock) {
		this.stock = stock;
	}

	@Override
	public int hashCode() {
		return Objects.hash(idShoes);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Shoes other = (Shoes) obj;
		return idShoes == other.idShoes;
	}

	@Override
	public String toString() {
		return "Shoes [idShoes=" + idShoes + ", name=" + name + ", price=" + price + ", sizes=" + sizes
				+ ", releaseDate=" + releaseDate + ", stock=" + stock + "]";
	}
	
	
	
	

}
