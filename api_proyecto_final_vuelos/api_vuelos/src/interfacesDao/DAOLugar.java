package interfacesDao;

import java.util.List;
import logica.Lugar;


public interface DAOLugar extends CRUD<Lugar>{
    public List<Lugar> listarAeropuertos() throws Exception;
}
