package Bd.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

	public class Conexao {
		private static Connection conexao = null;

		public static Connection abreConexao() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conexao = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/jstl " + "?useSSL=true&serverTimezone=America/Sao_Paulo", "root", "hericles");
			} catch ( SQLException | ClassNotFoundException e) {
			}
			return conexao;
		}

		public static void fechaConexao() {
			if (conexao instanceof Connection)
				try {
					conexao.close();
				} catch (SQLException e) {
				}
			conexao = null;
		}
}
