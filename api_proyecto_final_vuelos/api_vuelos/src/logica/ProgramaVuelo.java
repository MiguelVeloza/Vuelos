package logica;


public class ProgramaVuelo {
    private int id;
    private String idAeropuerto;
    private String idDestino;
    private String idOrigen;

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
