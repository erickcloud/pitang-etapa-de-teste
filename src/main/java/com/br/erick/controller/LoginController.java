package com.br.erick.controller;

import java.io.IOException;
import java.net.http.HttpResponse;
import java.rmi.ServerException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.br.erick.dao.UsuarioDAO;
import com.br.erick.model.Usuario;

@WebServlet(description = "Administra a tela de login", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public LoginController() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		// TODO Auto-generated method stub

		String opcao = request.getParameter("opcao");
		
		if (opcao.equals("logar")) {
			System.out.println(request.getParameter("email"));
			System.out.println(request.getParameter("senha"));
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			try {
				Usuario usuarioFiltrado = usuarioDAO.getVerificarUsuario(request.getParameter("email"), (request.getParameter("senha")));
				if (usuarioFiltrado != null) {
					System.out.println("Usuário encotrado " + usuarioFiltrado.getNome());
					
				} else {
					System.out.println("Usuário e senha incorreta!");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
}
