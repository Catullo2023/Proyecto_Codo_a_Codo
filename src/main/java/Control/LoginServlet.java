/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import Datos.Login;
import Datos.UsuarioDatos;
import Entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Usuario
 * 
 * https://www.youtube.com/watch?v=qF18YHwf-ow (prezdev)
 * 
 */

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {

   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String email=request.getParameter("email");
       String pass=request.getParameter("pass");
      
       Login usuario = new Login();
      
       boolean validar=usuario.validarUser(email, pass);
       HttpSession session;
       if (validar) {
            session = request.getSession();
            session.setAttribute("usuario", email);
            if (email.equals("jere@jere.com") && pass.equals("admin01")) {
                response.sendRedirect("/BibliotecaDigital/gestionUsuarios.html");
            } else {
                response.sendRedirect("index.html");
            }
        } else {
            response.sendRedirect("/BibliotecaDigital/IniciarSesion.html?errorL=registro");
        }
    }
 
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        if (session != null && session.getAttribute("usuario") != null) {
            String usuario = (String) session.getAttribute("usuario");
            response.getWriter().write("{\"loggedIn\": true, \"usuario\": \"" + usuario + "\"}");
        } else {
            response.getWriter().write("{\"loggedIn\": false}");
        }
    }
   }

