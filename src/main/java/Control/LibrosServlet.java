/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import Datos.LibrosDatos;
import Entidades.Libros;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet("/LibrosServlet")
public class LibrosServlet extends HttpServlet {
    
    private ObjectMapper om=new ObjectMapper();
     private LibrosDatos librosDatos = new LibrosDatos();
    
     protected void doGet(HttpServletRequest pedido,HttpServletResponse respuesta) throws ServletException,IOException{
         respuesta.setContentType("application/json");
         respuesta.setCharacterEncoding("UTF-8");
         List<Libros> libros= librosDatos.obtenerLibros();
         om.writeValue(respuesta.getWriter(),libros);
     }
}
