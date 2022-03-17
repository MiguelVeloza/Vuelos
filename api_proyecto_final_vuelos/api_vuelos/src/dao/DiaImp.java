/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import interfacesDao.DAODia;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import logica.Dia;
import logica.Pasajero;

/**
 *  @author alejandro cortazar 20181020022
 *  @author migue
 */
public class DiaImp extends Conexion implements DAODia{
    //1
    @Override
    public void registrar(Dia t) throws Exception {
        String sql="Insert into dia (iddia, anomdia) \n"+
                "values (?,?)";
        try{
            this.conectar();
            //que hace esta linea?
            PreparedStatement st = this.conexion.prepareStatement(sql);
            st.setString(1, t.getIddia());
            st.setString(2, t.getAnomdia());
            st.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }finally{
            this.cerrar();
        }
    }


    //2
    @Override
    public void modificar (Dia t) throws Exception{
        try{
            this.conectar();
            String sql = "Update dia \n" +
                    "Set iddia = ?, anomdia= ? \n"+
                    "where iddia= ? ;";
            PreparedStatement st = this.conexion.prepareStatement(sql);

            st.setString(1, t.getIddia());
            st.setString(2, t.getAnomdia());

            st.executeUpdate();
        }catch (Exception e){
            System.out.println(e.getLocalizedMessage());
        }finally{
            this.cerrar();
            System.out.println("cerrado");
        }
    }


    //3
    @Override
    public void eliminar(Dia t) throws Exception {
        try{
            this.conectar();
            String sql = "Delete from dia \n" +
                        "where iddia= ? ; ";
            PreparedStatement st = this.conexion.prepareStatement(sql);

            st.setString(1, t.getIddia());

            st.executeUpdate();
        }catch(Exception e){

        }finally{
            this.cerrar();
        }
    }

    //4
    @Override
    public List<Dia> listar() throws Exception {
        List<Dia> lista =null;
        try{
            this.conectar();
            String sql = "Select * From Dia";
            PreparedStatement st = this.conexion.prepareStatement(sql);
            lista = new ArrayList();
            ResultSet rs =st.executeQuery();

            while(rs.next()){
                Dia t = new Dia();
                t.setIddia(rs.getString("iddia"));
                t.setAnomdia(rs.getString("anomdia"));
                lista.add(t);
            }
            rs.close();
            st.close();
        }catch(Exception e){
            throw e;
        }finally{
            this.cerrar();
        }
        return lista;
    }
    
}
