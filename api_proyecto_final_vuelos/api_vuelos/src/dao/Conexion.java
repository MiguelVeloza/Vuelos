/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author migue
 */
public class Conexion {
    
    protected Connection conexion;
    
    private final String url = "jdbc:postgresql://localhost/VuelosAeropuerto";
    private final String JDBC_DRIVER = "org.postgresql.Driver";
    private final String user = "postgres";
    private final String password = "admin";
    
     public void conectar() throws Exception{
         try {
             conexion = DriverManager.getConnection(url, user, password);
             Class.forName(JDBC_DRIVER);
          
         }catch (Exception e){
            System.out.println(e.getMessage());
         }
         
     }
     
     public void cerrar () {
         if(conexion != null) {
             try{
             if (!conexion.isClosed()){
                 conexion.close();

             }
             }catch (Exception e){
                 e.getMessage();
             }
         }
     }
}
