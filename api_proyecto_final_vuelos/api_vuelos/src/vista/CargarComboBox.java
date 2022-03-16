package vista;

import dao.AerolineaImp;
import interfacesDao.DAOAerolinea;
import javax.swing.JComboBox;
import logica.Aerolinea;

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
        
    }
}
