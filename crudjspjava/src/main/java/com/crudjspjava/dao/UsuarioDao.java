package com.crudjspjava.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.crudjspjava.model.Usuario;
import com.mysql.cj.xdevapi.PreparableStatement;

public class UsuarioDao {
	
	public static Connection getConnection() {
		
		Connection con = null;
		
		try {
			
			// Carregando o driver mysql
			Class.forName("com.mysql.jdbc.Driver");
			
			// String de conexão com o banco de dados
			con = DriverManager.getConnection("jbdc://mysql://localhost:3306/crudjspjava", "root", "");
			
		} catch (Exception e) {
			System.out.println(e);
		}
			
		return con;
	}
	
	public static Usuario getRegistroById(int id) {
		
		Usuario usuario = null;
		
		try {
			
			Connection con = getConnection();		
			PreparedStatement ps = con.prepareStatement("SELECT * FROM crudjspjava.usuario WHERE id = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setPassword(rs.getString("password"));
				usuario.setEmail(rs.getString("email"));
				usuario.setSexo(rs.getString("sexo"));
				usuario.setPais(rs.getString("pais"));
				
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return usuario;
		
	}
	
	public static List<Usuario> getAllUsuarios(){
		
		// Cria uma nova lista de objetos 'Usuario' onde os dados serão armazenados
		List<Usuario> list = new ArrayList<Usuario>();
		
		
		try {
			
			// Obtem a conexão do banco de dados através do método 'getConnection
			Connection con = getConnection();
			
			// Prepara uma consulta SQL para selecionar os dados no banco de dados
			PreparedStatement ps = con.prepareStatement("SELECT * FROM crudjspjava.usuario");
			
			// Executa a consulta SQL e armazena em 'rs'
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
			
				// Cria um novo objeto 'Usuario' para cada linha da tab
				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setPassword(rs.getString("password"));
				usuario.setEmail(rs.getString("email"));
				usuario.setSexo(rs.getString("sexo"));
				usuario.setPais(rs.getString("pais"));
				
				// Adiciona o objeto 'Usuario' preenchido à lista de usuários
				list.add(usuario);
				
			}
			
		} catch (Exception e) {

			System.out.println(e);

		}
		
		return list;
		
	}
	

}