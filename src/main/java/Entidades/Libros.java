/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usuario
 */

   public class Libros {
    private int id;   
    private String titulo;
    private String autor;
    private int anio;
    private String editorial;
    private String sinopsis;
    private String portada;

    public Libros() {
    }
    

    public Libros(String titulo, String autor, int anio, String editorial, String sinopsis, String portada) {
        this.titulo = titulo;
        this.autor = autor;
        this.anio = anio;
        this.editorial = editorial;
        this.sinopsis = sinopsis;
        this.portada = portada;
    }

   
    public Libros(int id,String titulo, String autor, int anio, String editorial, String sinopsis, String portada) {
        this.id = id;
        this.titulo = titulo;
        this.autor = autor;
        this.anio = anio;
        this.editorial = editorial;
        this.sinopsis = sinopsis;
        this.portada = portada;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getAnio() {
        return anio;
    }

    public void setAnio(int anio) {
        this.anio = anio;
    }

    public String getEditorial() {
        return editorial;
    }

    public void setEditorial(String editorial) {
        this.editorial = editorial;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    public String getPortada() {
        return portada;
    }

    public void setPortada(String portada) {
        this.portada = portada;
    }


    
    
    
    
    
    
    /*public static void main(String[]args){
        String sql="insert into tendencias (titulo,autor,publicado,editorial,sinopsis,portada) values (?,?,?,?,?,?)";
        String imagePath = "C:\\MIS DOCUMENTOS\\JEREMIAS\\Programación\\Portafolio\\BibliotecaDigital\\Tapas de Libros\\Wonka - Dahl Roald.jpg";
        try (
            Connection con=Conexion.ConexionBD.obtenerConexion();
            PreparedStatement ps=con.prepareStatement(sql)){
            
            ps.setString(1,"Wonka");
            ps.setString(2,"Dahl Roald");
            ps.setInt(3,2024);
            ps.setString(4,"‎Alfaguara");
            ps.setString(5,"Y es que, desde niño, Willy Wonka había imaginado poder crear su propio chocolate y compartirlo con el mundo entero.\n" +
"\n" +
"Cuando era joven, llegó a las famosísimas Galerías Gourmet, dispuesto a cambiarlo todo con cada uno de los bocados de sus deliciosos dulces. Pero un trío de chocolateros envidiosos lo engañó y lo condenó a trabajar de por vida en una lavandería.\n" +
"\n" +
"Con algo de suerte y muchísima magia, además de la ayuda de sus amigos, conseguirá cumplir su sueño.\n" +
"\n" +
"Porque, cuando eres Willy Wonka, todo es posible.\n" +
"\n" +
"Esta deliciosa historia sobre sueños, amistad y chocolate está basada en la película Wonka, dirigida por Paul King, quién creó la historia y escribió el guion junto a Simon Farnaby. La exitosa autora Sibéal Pounder ha adaptado la historia en esta novela.");
          byte[] imageBytes = readFileToBytes(imagePath);
                if (imageBytes != null) {
                    ps.setBytes(6, imageBytes);
                } else {
                    ps.setNull(6, java.sql.Types.BLOB);
                }

                ps.executeUpdate();
                System.out.println("Datos insertados correctamente");
            
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }
    private static byte[] readFileToBytes(String filePath) throws IOException {
        File file = new File(filePath);
        try (FileInputStream fis = new FileInputStream(file)) {
            byte[] bytes = new byte[(int) file.length()];
            fis.read(bytes);
            return bytes;
        }
    }*/
    
}

