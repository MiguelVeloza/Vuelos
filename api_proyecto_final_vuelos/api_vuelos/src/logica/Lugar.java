/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

/**
 *
 * @author migue
 */
public class Lugar {
    private String id;
    private String nombre;
    private String idTipoLugar;
    private String idLugarSuperior;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getIdTipoLugar() {
        return idTipoLugar;
    }

    public void setIdTipoLugar(String idTipoLugar) {
        this.idTipoLugar = idTipoLugar;
    }

    public String getIdLugarSuperior() {
        return idLugarSuperior;
    }

    public void setIdLugarSuperior(String idLugarSuperior) {
        this.idLugarSuperior = idLugarSuperior;
    }
    
    
}
