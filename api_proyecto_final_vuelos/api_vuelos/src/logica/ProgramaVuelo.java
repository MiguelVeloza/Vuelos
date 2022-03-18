package logica;

/**
 *  @author alejandro cortazar 20181020022
 *  @author miguel veloza 20192020012
 */
public class ProgramaVuelo {
    private int id;
    private String idAeropuerto;
    private String idDestino;
    private String idOrigen;
    private String codLinea;

    public String getCodLinea() {
        return codLinea;
    }

    public void setCodLinea(String codLinea) {
        this.codLinea = codLinea;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdAeropuerto() {
        return idAeropuerto;
    }

    public void setIdAeropuerto(String idAeropuerto) {
        this.idAeropuerto = idAeropuerto;
    }

    public String getIdDestino() {
        return idDestino;
    }

    public void setIdDestino(String idDestino) {
        this.idDestino = idDestino;
    }

    public String getIdOrigen() {
        return idOrigen;
    }

    public void setIdOrigen(String idOrigen) {
        this.idOrigen = idOrigen;
    }
}
