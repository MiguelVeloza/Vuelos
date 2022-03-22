
package dao;


import interfacesDao.DAOAerolinea;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import logica.Aerolinea;
import logica.Pasajero;



public class AerolineaImp extends Conexion implements DAOAerolinea {

    @Override
    public void registrar(Aerolinea t) throws Exception {
        String sql = "INSERT INTO pasajero(idpasajero, idlugar, nombre, apellido, fechanacimiento) \n" +
                          "VALUES (?, ?, ?, ?, ?);";
        
        try{
            this.conectar();
                      
            PreparedStatement st = this.conexion.prepareStatement(sql);
            
                   
            st.executeUpdate();
        }catch (Exception e){
            System.out.println(e.getMessage());
        } finally {
            this.cerrar();
        }
    }

    @Override
    public void modificar(Aerolinea t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void eliminar(Aerolinea t) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Aerolinea> listar() throws Exception {
         List<Aerolinea> lista = null; 
        try{
            this.conectar();
            String sql = "SELECT * FROM lineaaerea";
            
            PreparedStatement st = this.conexion.prepareStatement(sql);
            lista = new ArrayList();
            ResultSet rs = st.executeQuery();
            
            while(rs.next()) {
                Aerolinea a = new Aerolinea();
                a.setCodigo(rs.getString("codlinea"));
                a.setNombre(rs.getString("nombrelinea"));
                
                lista.add(a);
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

    @Override
    public Aerolinea obtenerAerolineaByCod(String cod) throws Exception {
        Aerolinea a = null; 
        try{
            this.conectar();
            String sql = "select * from lineaaerea\n" +
                          "WHERE codlinea='"+cod+"';";
            
            PreparedStatement st = this.conexion.prepareStatement(sql);                      
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                a = new Aerolinea();
                a.setCodigo(rs.getString("codlinea"));
                a.setNombre(rs.getString("nombrelinea"));
            }
            
            
            rs.close();
            st.close();                              
        }catch (Exception e){
            throw e;
        } finally {
            this.cerrar();
        }
        return a;
    }

  
}
