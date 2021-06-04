package com.br.erick.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.br.erick.dao.UsuarioDAO;
import com.br.erick.model.Usuario;

/**
 * Servlet implementation class UsuarioController
 */
@WebServlet(description = "administra a tabela de usuarios", urlPatterns = { "/usuarios" })
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String opcao = request.getParameter("opcao");	
		
		if (opcao.equals("criar")) {
			System.out.println("Você escolheu a opção de criar");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/criar.jsp");
			requestDispatcher.forward(request, response);
		} else if (opcao.equals("lista")) {
			
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			List<Usuario> lista = new ArrayList<>();
			try {
				lista = usuarioDAO.getUsuario();
				for (Usuario usuario : lista) {
					System.out.println(usuario);
				}
				
				request.setAttribute("lista", lista);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/lista.jsp");
				requestDispatcher.forward(request, response);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println("Você escolheu a opção de editar");
		} else if (opcao.equals("editar")) {
			int id = Integer.parseInt(request.getParameter("id"));
			System.out.println("Editar id: " + id);
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			Usuario usuario = new Usuario();
			try {
				usuario = usuarioDAO.getUsuario(id);
				System.out.println(usuario);
				request.setAttribute("usuario", usuario);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/editar.jsp");
				requestDispatcher.forward(request, response);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else if (opcao.equals("deletarUsuario")) {
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			int id = Integer.parseInt(request.getParameter("id"));
			try {
				usuarioDAO.deletarUsuario(id);
				System.out.println("Deletado com sucesso...");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
				
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String opcao = request.getParameter("opcao");
		
		if (opcao.equals("salvar")) {
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			Usuario usuario = new Usuario();
			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));
			try {
				usuarioDAO.salvarUsuario(usuario);
				System.out.println("Registrado com sucesso...");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
				requestDispatcher.forward(request, response);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if (opcao.equals("editar")) {
			Usuario usuario = new Usuario();
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			
			usuario.setId(Integer.parseInt(request.getParameter("id")));
			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));
			try {
				usuarioDAO.editarUsuario(usuario);
				System.out.println("Editado com sucesso...");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
				requestDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
		
		
		//doGet(request, response);
	}

}
