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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet("/detalleServlet")
public class detalleServlet extends HttpServlet {
     private ObjectMapper om = new ObjectMapper();
    private LibrosDatos librosDatos = new LibrosDatos();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        int libroId = Integer.parseInt(request.getParameter("id"));
        Libros libro = librosDatos.obtenerLibroPorId(libroId);

        om.writeValue(response.getWriter(), libro);
    }
   
}
