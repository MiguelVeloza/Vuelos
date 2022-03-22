
package logica;

import dao.AerolineaImp;
import dao.PasajeroImp;
import interfacesDao.DAOAerolinea;
import interfacesDao.DAOPasajero;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import java.util.logging.Level;
import java.util.logging.Logger;

public class Main {
    
    public static void main(String[] args){
        Pasajero p = new Pasajero();
        p.setId("7896541");
        p.setNombre("Mateoe");
        p.setApellido("Gonzalez");
        
        
        Date f = new Date(116,5,6);
        p.setFechaNacimiento(f);
        p.setIdLugar("00001");
        
        DAOPasajero daoP = new PasajeroImp();
        DAOAerolinea daoAerolinea = new AerolineaImp();

             
        try {
            
           
            for(Pasajero pe: daoP.listar()){
                System.out.println(pe.getNombre());
            }
            for(Aerolinea ar: daoAerolinea.listar()){
                System.out.println(ar.getNombre());
            }
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
}
