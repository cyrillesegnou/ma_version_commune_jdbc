import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CommuneTest {

	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		// le nom de la classe du driver 
		String driver = "com.mysql.cj.jdbc.Driver";
		//URL veers la base de données
		String url= "jdbc:mysql://localhost:3306/communes-france";
		// utilisateur
		String user = "root" ;
		//MDP
		String pswd = "";
		
		//chargement du driver en mémoire;
		Class.forName(driver) ;
		
		//pour intéroger la base
		//1 - obtenir une connection (getConnection  est une mthode statics
		Connection connection = DriverManager.getConnection(url, user, pswd);
		
		//2 - création de la requette SQL
		String sql = "SELECT * FROM communes WHERE code_postal LIKE '972%'";
		
		//3- obtenir l'envorinnement de la requete 
		Statement statement = connection.createStatement();
		
		//4 - exercution de la requette
		ResultSet rs = statement.executeQuery(sql) ;
		
		// exploitation du resusltat
		while (rs.next()) {
			String nom = rs.getString("nom");
			String cp = rs.getString("code_postal");
			System.out.println(cp + " - " + nom);
		}
		
		//FERMER LA CONNEXION
		
		connection.close();
		
	}

}
