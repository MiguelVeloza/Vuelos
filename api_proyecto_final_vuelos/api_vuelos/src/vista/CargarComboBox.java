package vista;

import dao.AerolineaImp;
import dao.DiaImp;
import dao.LugarImp;
import dao.ProgramaVueloImp;
import interfacesDao.DAOAerolinea;
import interfacesDao.DAODia;
import interfacesDao.DAOLugar;
import interfacesDao.DAOProgramaVuelo;
import javax.swing.JComboBox;
import logica.Aerolinea;
import logica.Dia;
import logica.Lugar;
import logica.ProgramaVuelo;

public class CargarComboBox {
    
    public void comboBoxAerolinea(JComboBox aeroCombo){
        DAOAerolinea daoAerolinea = new AerolineaImp();
    
        try {           
            for(Aerolinea ar: daoAerolinea.listar()){
                aeroCombo.addItem(ar.getNombre());
            }
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void comboBoxAeropuertoPlan(JComboBox aeropuertoPlanCombo) {
        DAOLugar daoLugar = new LugarImp();
    
        try {           
            for(Lugar l: daoLugar.listarAeropuertos()){                
                aeropuertoPlanCombo.addItem(l.getNombre());
                
            }
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public String obtenerIdAeropuerto(String nombre) {
        DAOLugar daoAeropuerto = new LugarImp();
        String idAeropuerto = "";
        try {           
            for(Lugar l: daoAeropuerto.listarAeropuertos()){               
                if (nombre.equals(l.getNombre()))
                    idAeropuerto = l.getId();            
            }
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
        return idAeropuerto;
    }
    
    public String obtenerIdAerolinea(String nombre) {
        DAOAerolinea daoAerolinea = new AerolineaImp();
        String idAerolinea = "";
        try {           
            for(Aerolinea ar: daoAerolinea.listar()){
                if (nombre.equals(ar.getNombre()))
                    idAerolinea = ar.getCodigo();  
            }
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
        return idAerolinea;
    }
    
    public int obtenerIdProgramaVuelo(){
        DAOProgramaVuelo daoPr = new ProgramaVueloImp();
        int idProgramaVuelo = 0;
        
        try{
            for(ProgramaVuelo pr : daoPr.listar()){              
                if(pr.getId()>idProgramaVuelo)
                    idProgramaVuelo++;
                    
            }
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        idProgramaVuelo++;
        
        return idProgramaVuelo;
    }
    
    public String obtenerIdDia(String nombre) {
        DAODia daoDia = new DiaImp();
        String idDia = "";
        try {           
            for(Dia d: daoDia.listar()){
                if (nombre.equals(d.getAnomdia()))
                    idDia = d.getIddia();  
            }
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
        return idDia;
    }
}
