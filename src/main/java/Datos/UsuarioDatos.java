/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

import Conexion.ConexionBD;
import Entidades.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Usuario
 */
public class UsuarioDatos {
    //--------------------GUARDAR-------------------------
    public boolean guardarUsuario(Usuario usuario){
        String sql="insert into registroUsuarios(nombre,apellido,fecha,email,password,pais) values (?,?,?,?,?,?)";
        String sqlL="insert into loginUsuarios(email,pass) values(?,?)";
        try (
            Connection con=ConexionBD.obtenerConexion();
            PreparedStatement ps = con.prepareStatement(sql); 
            PreparedStatement psL = con.prepareStatement(sqlL)){
            //-----------Registro----------------
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getApellido());
            ps.setDate(3, usuario.getFecha());
            ps.setString(4, usuario.getEmail());
            ps.setString(5, usuario.getPass());
            ps.setString(6, usuario.getPais());
            int filasAfectadas = ps.executeUpdate();
            
            //---------------Login----------------
            psL.setString(1,usuario.getEmail());
            psL.setString(2, usuario.getPass());
            int filasAfectadasLogin = psL.executeUpdate();
            return filasAfectadas > 0 && filasAfectadasLogin > 0;
        } catch (SQLIntegrityConstraintViolationException e) {
            // Manejo específico de la violación de restricciones de integridad
            if (e.getMessage().contains("Duplicate entry")) {
                System.out.println("Error: El correo electrónico ya está registrado.");
            } else {
                System.out.println("Error: " + e.getMessage());
            }
            return false;

        } catch (SQLException e) {
            
            e.printStackTrace();
            return false;
        }
    }
    
    
    //---------------------------EXTRAER--------------------
     private Usuario extraerUsuarioDeResultSet(ResultSet rs) throws Exception {
        Usuario usuario = new Usuario();
        usuario.setId(rs.getInt("id"));
        usuario.setNombre(rs.getString("nombre"));
        usuario.setApellido(rs.getString("apellido"));
        usuario.setFecha(rs.getDate("fecha"));
        usuario.setEmail(rs.getString("email"));
        usuario.setPass(rs.getString("password"));
        usuario.setPais(rs.getString("pais"));
        return usuario;
    }
     
    //------------------------------LISTA-------------------------------------- 
     public List<Usuario> listarUsuario(){
          List<Usuario> listaUsuario = new ArrayList<>();
          String sql="select * from registroUsuarios";
          try (
            Connection con=ConexionBD.obtenerConexion();      
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();){
            
             while (rs.next()) {
                Usuario usuario = extraerUsuarioDeResultSet(rs);
                
                listaUsuario.add(usuario);
            }
            ps.close();  
            } catch (Exception ex) {
           ex.printStackTrace();
        }
     return listaUsuario;
     }
    //------------------------------BUSQUEDA--------------------------- 
     public Usuario buscarPorId(int id){
         String sql="select * from registroUsuarios where id=?";
        try(Connection con=ConexionBD.obtenerConexion();      
            PreparedStatement ps = con.prepareStatement(sql)){
            ps.setInt(1, id);
            try(ResultSet rs=ps.executeQuery()){
                if(rs.next()){
                    return extraerUsuarioDeResultSet(rs);
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
     }
    //----------------------------------MODIFICAR------------------------------------
     public boolean modificar(Usuario usuario){
       String sql="update registroUsuarios set nombre=?,apellido=?,fecha=?,email=?,password=?,pais=? where id=?"; 
       try(Connection con=ConexionBD.obtenerConexion();      
            PreparedStatement ps = con.prepareStatement(sql)){
            ps.setString(1, usuario.getNombre());
             ps.setString(2, usuario.getApellido());
            ps.setDate(3, usuario.getFecha());
            ps.setString(4, usuario.getEmail());
            ps.setString(5, usuario.getPass());
            ps.setString(6, usuario.getPais());
            ps.setInt(7, usuario.getId());
            int fila=ps.executeUpdate();
            return fila > 0;
       }catch(Exception e){
           e.printStackTrace();
           return false;
       }
     }
    //-------------------ELIMINAR-----------------------
   /*  public boolean eliminar(int id){
    String sql="delete from registroUsuarios where id=?";
   String sqlL = "delete from loginUsuarios where email=(select email from registroUsuarios where id=?)";
    try(Connection con=ConexionBD.obtenerConexion();      
            PreparedStatement ps = con.prepareStatement(sql);
            PreparedStatement psL=con.prepareStatement(sqlL)
            ){
            ps.setInt(1, id);
            int fila=ps.executeUpdate();
            psL.setInt(1, id);
            int filaL=psL.executeUpdate();
            return fila>0 && filaL>0;
    }catch(Exception e){
        e.printStackTrace();
        return false;
    }
}*/
     public boolean email(String email){
         String sql="select count(*) from registroUsuarios where email=?";
          try(Connection con=ConexionBD.obtenerConexion();      
            PreparedStatement ps = con.prepareStatement(sql)){
              ps.setString(1, email);
              ResultSet rs=ps.executeQuery();
              if(rs.next()){
                  return rs.getInt(1)>0;
              }
          }catch(Exception e){
              e.printStackTrace();
              return false;
          }
          return false;
     }


public boolean eliminar(int id) {
    String sqlGObtenerEmail = "select email from registroUsuarios where id=?";
    String sql = "delete from registroUsuarios where id=?";
    String sqlDeleteLogin = "delete from loginUsuarios where email=?";
    try (Connection con = ConexionBD.obtenerConexion()) {
       
        try (PreparedStatement psObtenerEmail = con.prepareStatement(sqlGObtenerEmail);
             PreparedStatement ps = con.prepareStatement(sql);
             PreparedStatement psL = con.prepareStatement(sqlDeleteLogin)) {
            psObtenerEmail.setInt(1, id);
            ResultSet rs = psObtenerEmail.executeQuery();
            if (rs.next()) {
                String email = rs.getString("email");
                ps.setInt(1, id);
                int filaRegistro = ps.executeUpdate();
                psL.setString(1, email);
                int filaLogin = psL.executeUpdate();
              
                return filaRegistro > 0 && filaLogin > 0;
            } else {
               
                return false;
            }
        } catch (SQLException e) {
          
            e.printStackTrace();
            return false;
        }
    } catch (Exception e) {
        e.printStackTrace();
        return false;
    }
}
}