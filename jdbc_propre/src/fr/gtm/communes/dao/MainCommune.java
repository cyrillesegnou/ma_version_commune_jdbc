package fr.gtm.communes.dao;

import java.sql.SQLException;
import java.util.List;

import fr.gtm.communes.entities.Commune;

public class MainCommune {

	public static void main(String[] args) throws SQLException, ClassNotFoundException{
		
				String driver = "com.mysql.cj.jdbc.Driver";
				
				String url= "jdbc:mysql://localhost:3306/communes-france";
				
				String user = "root" ;
			
				String pswd = "";
				
				CommunesDao dao = new CommunesDao(url, user, pswd, driver);
				List <Commune> communes = dao.findCommunesByDepartement("paris");
					for (Commune c : communes) {
						System.out.println(c);
		}
	}
}
