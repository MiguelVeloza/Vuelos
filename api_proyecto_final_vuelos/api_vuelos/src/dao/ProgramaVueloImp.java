/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import interfacesDao.DAOProgramaVuelo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import logica.ProgramaVuelo;

/**
 *  @author alejandro cortazar 20181020022
 *  @author miguel veloza 20192020012
 */
public class ProgramaVueloImp extends Conexion implements DAOProgramaVuelo{

    @Override
    public void registrar(ProgramaVuelo t) throws Exception {
        String sql = "INSERT INTO programavuelo (idprograma, idlugar, lug_idlugar, lug_idlugar2, codlinea) \n" +
                      "VALUES (?, ?, ?, ?, ?)";
        
        try{
            this.conectar();
                      
            PreparedStatement st = this.conexion.prepareStatement(sql);
            st.setInt(1, t.getId());
            st.setString(2, t.getIdAeropuerto());
            st.setString(3, t.getIdOrigen());
            st.setString(4, t.getIdDestino());
            st.setString(5, t.getCodLinea());
            
            
            st.executeUpdate();
        }catch (Exception e){
            System.out.println(e.getMessage());
        } finally {
            this.cerrar();
        }
    }

    @Override
    public void modificar(ProgramaVuelo t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void eliminar(ProgramaVuelo t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ProgramaVuelo> listar() throws Exception {
        List<ProgramaVuelo> lista = null; 
        try{
            this.conectar();
            String sql = "SELECT * FROM programavuelo;";
            
            PreparedStatement st = this.conexion.prepareStatement(sql);
            lista = new ArrayList();
            ResultSet rs = st.executeQuery();
            
            while(rs.next()) {
                ProgramaVuelo pr = new ProgramaVuelo();
                pr.setId(rs.getInt("idprograma"));
                pr.setIdAeropuerto(rs.getString("idlugar"));
                pr.setIdOrigen(rs.getString("lug_idlugar"));
                pr.setIdDestino(rs.getString("lug_idlugar2"));
                pr.setCodLinea(rs.getString("codlinea"));
                
                lista.add(pr);
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
