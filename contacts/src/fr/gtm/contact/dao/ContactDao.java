package fr.gtm.contact.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import fr.gtm.contacts.entities.Contact;

public class ContactDao {
	
	private String user ;
	private String pswd ;
	private String url ;
	public ContactDao(String user, String pswd, String url, String driver) throws ClassNotFoundException {
		super();
		this.user = user;
		this.pswd = pswd;
		this.url = url;
		Class.forName(driver) ;
	}
	public List <Contact> FindContactsbyId (long id) throws SQLException {
		Connection connection = DriverManager.getConnection(user, pswd, url) ;
		String sql = "SELECT * FROM contacts WHERE id = '"+id+"";
		Statement statement = connection.createStatement();
		ResultSet rs = statement.executeQuery(sql);
		Contact c = new Contact(); 
		c = createContact (rs) ;
		return c ;
	}
	public List<Contact> findContactsByCivilite (String civilite) throws SQLException {
		Connection connection = DriverManager.getConnection (user, url, pswd) ;
		String sql = "SELECT * FROM contacts WHERE civilite = '"+civilite+"'";
		Statement statement = connection.createStatement();
		ResultSet rs = statement.executeQuery(sql) ;
		List<Contact> contacts = new ArrayList<Contact>();
		
		while (rs.next()) {	
		contacts.add(createContact(rs));
	}
		connection.close();
		return contacts ;
	}
	
	private Contact createContact(ResultSet rs) throws SQLException{
		Contact c = new Contact();
		c.setId(rs.getLong("Id"));
		c.setCivilite(rs.getString("civilite"));
		c.setNom(rs.getString ("nom"));
		c.setPrenom(rs.getString ("prenom"));
		return c;
	}
	//methode INSERT
	public void create (Contact contact) throws SQLException {
		
		String sql = "INSERT INTO personnes civilite, nom, prenom = 1 , 2 , 3 "; 
		
		try (Connection connection = DriverManager.getConnection(user, pswd, url);
				PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		    ) {
			 
		        statement.setString(1, contact.getCivilite());
		        statement.setString(2, contact.getNom());
		        statement.setString(3, contact.getPrenom());
		
		try (ResultSet generatedId = statement.getGeneratedId()) {
            if (generatedId.next()) {
                contact.setId(generatedId.getLong(1));
            }
            else { 
            	}
            }
		
	}}
}
		