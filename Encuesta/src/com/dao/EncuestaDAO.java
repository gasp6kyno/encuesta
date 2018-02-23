package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Conexion;
import com.model.Encuesta;

public class EncuestaDAO {

	private Conexion con;
	private Connection connection;
	
	public EncuestaDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
		con = new Conexion(jdbcURL, jdbcUsername, jdbcPassword);
	}
	
	// Insertar
	public boolean insertar(Encuesta encuesta) throws SQLException {
		
		String sql = "INSERT INTO encuestas (grupoid, ask1, ask2, ask3, ask4, ask5, ask6, ask7, ask8, ask9, total, comentarios) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		con.conectar();
		connection = con.getJdbcConnection();
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, encuesta.getGrupoID());
		ps.setInt(2, encuesta.getAsk1());
		ps.setInt(3, encuesta.getAsk2());
		ps.setInt(4, encuesta.getAsk3());
		ps.setInt(5, encuesta.getAsk4());
		ps.setInt(6, encuesta.getAsk5());
		ps.setInt(7, encuesta.getAsk6());
		ps.setInt(8, encuesta.getAsk7());
		ps.setInt(9, encuesta.getAsk8());
		ps.setInt(10, encuesta.getAsk9());
		ps.setFloat(11, encuesta.getTotal());
		ps.setString(12, encuesta.getComentarios());
		
		boolean rowInserted = ps.executeUpdate() > 0;
		ps.close();
		con.desconectar();
		return rowInserted;
	}
	
	// Mostrar
	public List<Encuesta> listEncuestas() throws SQLException {
		
		List<Encuesta> listEncuestas = new ArrayList<Encuesta>();
		String sql = "SELECT grupoID, total, comentarios FROM encuestas order by total Desc";
		con.conectar();
		connection = con.getJdbcConnection();
		Statement st = connection.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		while (rs.next()) {
			
//			int ask1 = rs.getInt("ask1");
//			int ask2 = rs.getInt("ask2");
//			int ask3 = rs.getInt("ask3");
//			int ask4 = rs.getInt("ask4");
//			int ask5 = rs.getInt("ask5");
//			int ask6 = rs.getInt("ask6");
//			int ask7 = rs.getInt("ask7");
//			int ask8 = rs.getInt("ask8");
//			int ask9 = rs.getInt("ask9");
			float total = rs.getFloat("total");
			String grupoID = rs.getString("grupoid");
			String comentarios = rs.getString("comentarios");
			
			Encuesta encuesta = new Encuesta(/*ask1, ask2, ask3, ask4, ask5, ask6, ask7, ask8, ask9,*/ total, grupoID, comentarios);
			listEncuestas.add(encuesta);
		}
		con.desconectar();
		return listEncuestas;
	}
}
