package fr.gtm.communes.dao.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.sql.SQLException;

import org.junit.Test;

import fr.gtm.communes.dao.CommunesDao;

public class TestCommuneDao {
        String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/communes-france";
		String user="root";
		String pswd="";
	@Test 
	public void testCommunesDao() throws ClassNotFoundException {
		CommunesDao dao =new CommunesDao(url,user,pswd, driver);
		assertNotNull(dao);
	}
//	@Test
//	public void testFindCommunesByCodePostal() throws ClassNotFoundException, SQLException {
//		CommunesDao dao =new CommunesDao(driver, url, user, pswd);
//		assertTrue(dao.findCommunesByCodePostal("999").size()==0);
//		assertTrue(dao.findCommunesByCodePostal("358").size()>0);
	@Test (expected = ClassNotFoundException.class)
	public void testCommunesDaoException() throws ClassNotFoundException {
		CommunesDao dao=new CommunesDao( url, user, pswd, "foo");
		assertNotNull(dao);
			}
	@Test
	public void testFindCommunesByNomDepartement() throws ClassNotFoundException, SQLException {
		CommunesDao dao=new CommunesDao(url, user, pswd, driver);
		assertTrue(dao.findCommunesByDepartement("foo").size()==0);
		assertTrue(dao.findCommunesByDepartement("paris").size()>0);
	}
}