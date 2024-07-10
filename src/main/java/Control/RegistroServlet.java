/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import Datos.UsuarioDatos;
import Entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet("/registro")
public class RegistroServlet extends HttpServlet {

  
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener parámetros de la solicitud
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String fechaNacimiento = request.getParameter("fechaNacimiento");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String pais = request.getParameter("pais");

        Usuario usuario = new Usuario();
        usuario.setNombre(nombre);
        usuario.setApellido(apellido);
        //convierte una cadena de texto a un objeto Date
        //proviene del paquete java.sql
        usuario.setFecha(Date.valueOf(fechaNacimiento));
        usuario.setEmail(email);
        usuario.setPass(password);
        usuario.setPais(pais);

        UsuarioDatos userD = new UsuarioDatos();
       
       if (userD.email(email)) {
        response.sendRedirect("IniciarSesion.html?error=email_duplicado");
        return;
    } 
       boolean registroExitoso = userD.guardarUsuario(usuario);
       
        if (registroExitoso) {
            response.sendRedirect("IniciarSesion.html?exito=true");
        } else {
            response.sendRedirect("IniciarSesion.html?error=true");
        }
    }
}


