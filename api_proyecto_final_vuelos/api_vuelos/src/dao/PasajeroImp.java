/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import interfacesDao.DAOPasajero;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import logica.Pasajero;

/**
 * @author alejandro cortazar 20181020022
 * @author migue
 */
public class PasajeroImp extends Conexion implements DAOPasajero{

    @Override
    public void registrar(Pasajero p) throws Exception {
        String sql = "INSERT INTO pasajero(idpasajero, idlugar, nombre, apellido, fechanacimiento) \n" +
                          "VALUES (?, ?, ?, ?, ?);";
        
        try{
            this.conectar();
                      
            PreparedStatement st = this.conexion.prepareStatement(sql);
            
            st.setString(1, p.getId());
            st.setString(2, p.getIdLugar());
            st.setString(3, p.getNombre());
            st.setString(4, p.getApellido());
            st.setDate(5, p.getFechaNacimiento());       
            st.executeUpdate();
        }catch (Exception e){
            System.out.println(e.getMessage());
        } finally {
            this.cerrar();
        }
    }

    @Override
    public void modificar(Pasajero p) throws Exception {
        try{
            this.conectar();
            String sql = "UPDATE pasajero\n" +
                        "SET idlugar=?, nombre=?, apellido=?, fechanacimiento=? \n" +
                        "WHERE idpasajero = ?;";
            
            PreparedStatement st = this.conexion.prepareStatement(sql);
            
            st.setString(1, p.getIdLugar());
            st.setString(2, p.getNombre());
            st.setString(3, p.getApellido());
            st.setDate(4, p.getFechaNacimiento());
            st.setString(5, p.getId());
            
            st.executeUpdate();
        }catch (Exception e){
            System.out.println(e.getMessage());
        } finally {
            this.cerrar();
            System.out.println("cerrado");
        }
    }

    @Override
    public void eliminar(Pasajero p) throws Exception {
        try{
            this.conectar();
            String sql = "DELETE FROM pasajero\n" +
                          "WHERE idpasajero = ?;";
            
            PreparedStatement st = this.conexion.prepareStatement(sql);
            
            st.setString(1, p.getId());
            
            st.executeUpdate();
        }catch (Exception e){
            
        } finally {
            this.cerrar();
        }
    }

    @Override
    public List<Pasajero> listar() throws Exception {
        
        List<Pasajero> lista = null; 
        try{
            this.conectar();
            String sql = "SELECT * FROM pasajero";
            
            PreparedStatement st = this.conexion.prepareStatement(sql);
            lista = new ArrayList();
            ResultSet rs = st.executeQuery();
            
            while(rs.next()) {
                Pasajero p = new Pasajero();
                p.setId(rs.getString("idpasajero"));
                p.setIdLugar(rs.getString("idlugar"));
                p.setNombre(rs.getString("nombre"));
                p.setApellido(rs.getString("apellido"));
                p.setFechaNacimiento(rs.getDate("fechanacimiento"));
                
                lista.add(p);
            }
            rs.close();
            st.close();                              
        }catch (Exception e){
            throw e;
        } finally {
            this.cerrar();
        }
        return lista;
    }
    
}
