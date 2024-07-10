/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Usuario
 */
public class ConexionBD {
    private static final String url = "jdbc:mysql://localhost/bibliotecaDigital";
    private static final String usuario = "root";
    private static final String pass = "";
    
    public static Connection obtenerConexion() throws SQLException {
    try {
        // Cargar el driver
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        throw new SQLException("No se encontró el driver JDBC", e.getMessage());
    }
    return DriverManager.getConnection(url, usuario, pass);
}
     //Prueba de conexion
//    public static void main(String[] args) {
//        try {
//            Connection con = ConexionBD.obtenerConexion();
//            if(con != null){
//                System.out.println("Conexion exitosa");
//            }
//        } catch (SQLException e) {
//            System.out.println(e.getMessage());
//        }
//    }
}
