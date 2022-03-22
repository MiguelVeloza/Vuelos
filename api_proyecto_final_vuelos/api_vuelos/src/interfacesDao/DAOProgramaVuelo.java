package interfacesDao;

import java.util.List;
import logica.ProgramaVuelo;

/**
 *  @author alejandro cortazar 20181020022
 *  @author miguel veloza 20192020012
 */

public interface DAOProgramaVuelo extends CRUD<ProgramaVuelo>{
    public List<ProgramaVuelo> listarProgramasDia(String dia)  throws Exception;
}
