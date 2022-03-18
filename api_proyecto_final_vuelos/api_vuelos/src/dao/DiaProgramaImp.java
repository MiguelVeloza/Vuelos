/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import interfacesDao.DAODiaPrograma;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import logica.DiaPrograma;

/**
 *  @author alejandro cortazar 20181020022
 *  @author miguel veloza 20192020012
 */
public class DiaProgramaImp extends Conexion implements DAODiaPrograma{

    @Override
    public void registrar(DiaPrograma dp) throws Exception {
        String sql = "INSERT into diaprograma (idprograma, iddia)\n" +
                    "VALUES (?,?);";
        
        try{
            this.conectar();
                      
            PreparedStatement st = this.conexion.prepareStatement(sql);
            
            st.setInt(1, dp.getIdPrograma());
            st.setString(2, dp.getIdDia());
            st.executeUpdate();
        }catch (Exception e){
            System.out.println(e.getMessage());
        } finally {
            this.cerrar();
        }
    }

    @Override
    public void modificar(DiaPrograma t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void eliminar(DiaPrograma t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<DiaPrograma> listar() throws Exception {
        List<DiaPrograma> lista = null; 
        try{
            this.conectar();
            String sql = "SELECT * FROM diaprograma";
            
            PreparedStatement st = this.conexion.prepareStatement(sql);
            lista = new ArrayList();
            ResultSet rs = st.executeQuery();
            
            while(rs.next()) {
                DiaPrograma dp = new DiaPrograma();
                
                dp.setIdDia(rs.getString("iddia"));
                dp.setIdPrograma(rs.getInt("idprograma"));
                
                lista.add(dp);
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
