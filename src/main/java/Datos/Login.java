/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Usuario
 */
public class Login {
    
    public boolean validarUser(String email,String pass){
        boolean bandera=false;
        String sql="select * from loginusuarios where email=? and pass=?";
        try(Connection con=Conexion.ConexionBD.obtenerConexion();
        PreparedStatement ps=con.prepareStatement(sql)){
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs=ps.executeQuery();
            bandera=rs.next();
        }catch(SQLException e){
            e.printStackTrace();
        }
        return bandera;
    }
}
