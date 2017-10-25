package com.befab.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Adresse {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int adresse_id;
	@Column
	private String ligne1;
	@Column
	private String ville;
	@Column
	private String codePostal;
	@Column
	private double latitude;
	@Column
	private double longitude;

	public int getAdresse_id() {
		return adresse_id;
	}

	public void setAdresse_id(int adresse_id) {
		this.adresse_id = adresse_id;
	}

	public String getLigne1() {
		return ligne1;
	}

	public void setLigne1(String ligne1) {
		this.ligne1 = ligne1;
	}

	public String getCodePostal() {
		return codePostal;
	}

	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}

	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public Adresse(double latitude, double longitude,String ville) {
		this.ville = ville;
		this.latitude = latitude;
		this.longitude = longitude;
	}
	public Adresse() {
		
	}
}
