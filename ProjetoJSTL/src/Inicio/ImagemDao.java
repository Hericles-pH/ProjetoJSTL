package Inicio;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;




public class ImagemDao {
	
private static Connection conn = null;
	
	public static Connection abreConexao() throws Exception {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jstl"+
					 "?useSSL=true&serverTimezone=America/Sao_Paulo","root","wircd123");
			return conn;
		} catch (Exception e) {
			throw new Exception();
		}
	}
	
		
	public static void fechaConexao() throws Exception {
		try {
			if (conn instanceof Connection)	conn.close();
			conn = null;
		} catch (Exception e) {
			throw new Exception();
		}
	}
	
	
	
	
	public boolean insere(String objeto) throws Exception {
		Connection conexao = abreConexao();
		try {
			PreparedStatement pst = conexao.prepareStatement(
					"INSERT INTO Categoria (Nome) values (?);");
			pst.setString(1, objeto.getNome());
			return pst.executeUpdate() > 0;
		} catch (Exception e) {
			throw new DaoException(EErrosDao.INSERE_DADO, e.getMessage(), this.getClass());
		} finally {
			Conexao.fechaConexao();
		}
	}

}
