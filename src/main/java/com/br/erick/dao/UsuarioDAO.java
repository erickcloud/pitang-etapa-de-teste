package com.br.erick.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.br.erick.conexao.Conexao;
import com.br.erick.model.Usuario;

public class UsuarioDAO {

	private Connection connection;
	private PreparedStatement statement;
	private boolean estadoOperacao;
	
	public boolean salvarUsuario(Usuario usuario) throws SQLException {
		String sql = null;
		estadoOperacao = false;
		connection = getConexao();
		
		try {
			connection.setAutoCommit(false);
			sql = "INSERT INTO usuarios (id, nome, email, senha) VALUES(?,?,?,?)";
			statement = connection.prepareStatement(sql);
			
			statement.setString(1, null);
			statement.setString(2, usuario.getNome());
			statement.setString(3, usuario.getEmail());
			statement.setString(4, usuario.getSenha());
			
			estadoOperacao = statement.executeUpdate()>0;
			
			connection.commit();
			statement.close();
			connection.close();
		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}
		
		return estadoOperacao;
	}
	
	public boolean editarUsuario(Usuario usuario) throws SQLException {
		
		String sql = null;
		estadoOperacao = false;
		connection = getConexao();
		
		try {
			connection.setAutoCommit(false);
			sql = "UPDATE usuarios SET nome = ?, email = ?, senha = ? WHERE id = ?";
			statement = connection.prepareStatement(sql);
			
			statement.setString(1, usuario.getNome());
			statement.setString(2, usuario.getEmail());
			statement.setString(3, usuario.getSenha());
			statement.setInt(4, usuario.getId());
			
			estadoOperacao = statement.executeUpdate()>0;
			connection.commit();
			statement.close();
			connection.close();
			
			
		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}
		
		return estadoOperacao;
	}
	
	public boolean deletarUsuario(int idUsuario) throws SQLException {
		
		String sql = null;
		estadoOperacao = false;
		connection = getConexao();
		
		try {
			connection.setAutoCommit(false);
			sql = "DELETE FROM usuarios WHERE id = ?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, idUsuario);
			
			estadoOperacao = statement.executeUpdate()>0;
			connection.commit();
			statement.close();
			connection.close();
			
			
		} catch (SQLException e) {
			connection.rollback();
			e.printStackTrace();
		}
		
		return estadoOperacao;
	}
	
	public List<Usuario> getUsuario() throws SQLException {
		
		ResultSet resultSet = null;
		List<Usuario> listaUsuarios = new ArrayList<>();
		
		String sql = null;
		estadoOperacao = false;
		connection = getConexao();
		
		try {
			sql = "SELECT * FROM usuarios";
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				
				Usuario usuario = new Usuario();
				usuario.setId(resultSet.getInt(1));
				usuario.setNome(resultSet.getString(2));
				usuario.setEmail(resultSet.getString(3));
				usuario.setSenha(resultSet.getString(4));
				listaUsuarios.add(usuario);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return listaUsuarios;
	}
	
	public Usuario getUsuario(int idUsuario) throws SQLException {
		
		ResultSet resultSet = null;
		Usuario usuario = new Usuario();
		
		String sql = null;
		estadoOperacao = false;
		connection = getConexao();
		
		try {
			sql = "SELECT * FROM usuarios WHERE id = ?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, idUsuario);
			
			resultSet = statement.executeQuery();
			
			if (resultSet.next()) {
				
				
				usuario.setId(resultSet.getInt(1));
				usuario.setNome(resultSet.getString(2));
				usuario.setEmail(resultSet.getString(3));
				usuario.setSenha(resultSet.getString(4));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return usuario;
	}
	
	private Connection getConexao() throws SQLException {
		
		return Conexao.getConnection();
	}
}
