package fr.gtm.communes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import fr.gtm.communes.entities.Commune;

public class CommunesDao {
		
	private String user ;
	private String url ;
	private String pswd ;
	public CommunesDao(String user,  String url, String pswd, String driver) throws ClassNotFoundException {
		super();
		this.user = user;
		this.url = url;
		this.pswd = pswd;
		Class.forName(driver);
			}
//	
//	public List<Commune> findCommunesByCodePostal(String codePostal) throws SQLException {
//		
//		Connection connection = DriverManager.getConnection(user, url, pswd);
//	
//		String sql = "SELECT * FROM communes WHERE code_postal LIKE '972%'";
//
//		Statement statement = connection.createStatement();
//		
//		ResultSet rs = statement.executeQuery(sql) ;
//		
//		List<Commune> communes = new ArrayList<Commune>();
//		
//		while (rs.next()) {	
//			communes.add(createCommune(rs));
//		}
//		connection.close();
//		return communes ;	
//		}
	
	public List<Commune> findCommunesByDepartement(String departement) throws SQLException {
		Connection connection = DriverManager.getConnection (user, url, pswd) ;
		
		String sql = "SELECT * FROM communes WHERE departement = '"+departement+"'";
		Statement statement = connection.createStatement();
		
		ResultSet rs = statement.executeQuery(sql) ;
		
		List<Commune> communes = new ArrayList<Commune>();
		
		while (rs.next()) {	
			communes.add(createCommune(rs));
		}
		connection.close();
		return communes ;	
	}

	private Commune createCommune(ResultSet rs) throws SQLException {
		
		Commune  c = new Commune() ;
		
		c.setCodePostale(rs.getString("code_postal"));
		c.setDepartement(rs.getString("departement"));
		
		c.setRegion(rs.getString("region"));
		c.setNom(rs.getString("nom"));
		
		c.setLatitude(rs.getDouble("latitude"));
		c.setLongitude(rs.getDouble("longitude"));
		
		c.setId(rs.getLong("id"));
		
		return c;	
	}		
	}