package br.com.caelum.tarefas.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.caelum.tarefas.jdbc.ConnectionFactory;
import br.com.caelum.tarefas.jdbc.bean.Usuario;

public class UsuarioDAO {
	private Connection conn;
	
	public UsuarioDAO() {
		this.conn = new ConnectionFactory().getConnection();
	}

	public boolean existeUsuario(Usuario usuario) {
		boolean existe = false;
		String sql = "select * from usuarios where usuario = ? and senha = ?";
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, usuario.getUsuario());
			System.out.println(usuario.getUsuario());
			stmt.setString(2, usuario.getSenha());
			System.out.println(usuario.getSenha());
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				existe = true;
			}
			rs.close();
			stmt.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return existe;
	}
}
