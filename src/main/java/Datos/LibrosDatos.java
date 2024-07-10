/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

import Entidades.Libros;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Usuario
 */
public class LibrosDatos {
    public List<Libros> obtenerLibros() {
    List<Libros> libros = new ArrayList<>();
    String sql = "select * from tendencias order by autor asc";

    try (
        Connection con = Conexion.ConexionBD.obtenerConexion();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(sql)
    ) {
        while (rs.next()) {
            int id=rs.getInt("id");
            String titulo = rs.getString("titulo");
            String autor = rs.getString("autor");
            int publicado = rs.getInt("publicado");
            String editorial = rs.getString("editorial");
            String sinopsis = rs.getString("sinopsis");
           String portada = rs.getString("portada");

            Libros libro = new Libros(id,titulo, autor, publicado, editorial, sinopsis, portada);
            libros.add(libro);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return libros;
}
    public Libros obtenerLibroPorId(int id) {
    Libros libro = new Libros();
    String sql = "select * from tendencias where id=?";
    try (Connection con = Conexion.ConexionBD.obtenerConexion();
         PreparedStatement ps = con.prepareStatement(sql)) {
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
           
            libro.setId(rs.getInt("id"));
            libro.setTitulo(rs.getString("titulo"));
            libro.setAutor(rs.getString("autor"));
            libro.setAnio(rs.getInt("publicado"));
            libro.setEditorial(rs.getString("editorial"));
            libro.setSinopsis(rs.getString("sinopsis"));
            libro.setPortada(rs.getString("portada"));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return libro;
}

}
