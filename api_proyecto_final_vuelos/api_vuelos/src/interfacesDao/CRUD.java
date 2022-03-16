/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfacesDao;

import java.util.List;
import logica.Pasajero;

/**
 *
 * @author migue
 */
public interface CRUD <T>{
    public void registrar (T t) throws Exception;
    public void modificar (T t) throws Exception;
    public void eliminar (T t) throws Exception;
    public List<T> listar() throws Exception;
}
