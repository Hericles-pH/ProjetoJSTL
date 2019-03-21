package Bd.dao;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import Bd.conexao.Conexao;
import Bean.AvaliacaoBean;

public class AvaliacaoDAO {

	
	private static AvaliacaoBean constroi(ResultSet rs) throws SQLException, IOException {
		AvaliacaoBean prova = new AvaliacaoBean(rs.getString("hash"),
		new String(rs.getBytes("img"), StandardCharsets.UTF_8));
		return prova;
	}


	public AvaliacaoBean consulta(String idProva) throws Exception {
		Connection conexao = Conexao.abreConexao();
		Statement st = conexao.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM conteudoprova WHERE hash = '" + idProva + "';");
		try {
			if (rs.first()) {
				return constroi(rs);
			}
		} finally {
			Conexao.fechaConexao();
		}
		return null;
	}


	public boolean update(AvaliacaoBean prova) throws Exception {
		Connection conexao = Conexao.abreConexao();

		PreparedStatement pst = conexao.prepareStatement("UPDATE conteudoprova SET img = ? WHERE hashcode = ?");
		pst.setBytes(1, prova.getImg().getBytes());
		pst.setString(2, prova.getIdProva());
		pst.executeUpdate();
		return true;
	}
	public Map<String, String> consultaTodos() throws Exception {
		Connection conexao = Conexao.abreConexao();
		Statement st = conexao.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM conteudoprova;");
		AvaliacaoBean prova;
		Map<String, String> provas = new HashMap<String, String>();
		try {
			while (rs.next()) {
				prova= constroi(rs);
				provas.put(prova.getIdProva(), prova.getImg());
			}
		} finally {
			Conexao.fechaConexao();
		}
		return provas;
	}
}

