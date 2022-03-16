/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import interfacesDao.DAOLugar;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import logica.Lugar;

/**
 *
 * @author migue
 */
public class LugarImp extends Conexion implements DAOLugar{

    @Override
    public void registrar(Lugar t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void modificar(Lugar t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void eliminar(Lugar t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Lugar> listar() throws Exception {
        List<Lugar> lista = null; 
        try{
            this.conectar();
            String sql = "SELECT * FROM lugar";
            
            PreparedStatement st = this.conexion.prepareStatement(sql);
            lista = new ArrayList();
            ResultSet rs = st.executeQuery();
            
            while(rs.next()) {
                Lugar l = new Lugar();
                l.setId(rs.getString("idlugar"));
                l.setIdTipoLugar(rs.getString("idtipolugar"));
                l.setIdLugarSuperior(rs.getString("lug_idlugar"));
                l.setNombre(rs.getString("nomlugar"));
                
                lista.add(l);
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
