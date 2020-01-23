package fr.gtm.communes.entities;

public class Commune {
	private long id ;
	private String nom;
	private String codePostale ;
	private String region ;
	private String departement ;
	private double latitude ;
	private double longitude ;
	
	public long getId() {
		return id;
	}
	public void setId(long l) {
		this.id = l;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getCodePostale() {
		return codePostale;
	}
	public void setCodePostale(String codePostale) {
		this.codePostale = codePostale;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getDepartement() {
		return departement;
	}
	public void setDepartement(String departement) {
		this.departement = departement;
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
	@Override
	public String toString() {
		return "Commune [id= " + id + ", nom= " + nom + ", codePostale=" + codePostale + ", region=" + region
				+ ", departement=" + departement + ", latitude=" + latitude + ", longitude=" + longitude + "]";
	}}
