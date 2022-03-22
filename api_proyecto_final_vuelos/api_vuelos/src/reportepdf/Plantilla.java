package reportepdf;

/**
 *
 * @author migue
 */

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import dao.AerolineaImp;
import dao.LugarImp;
import interfacesDao.DAOAerolinea;
import interfacesDao.DAOLugar;
import java.io.FileOutputStream;
import java.util.List;
import logica.Aerolinea;
import logica.Lugar;
import logica.ProgramaVuelo;
public class Plantilla {
    
   
    
    private String fecha;
    private List<ProgramaVuelo> listaPV;
    
    Document documento;
    FileOutputStream archivo;
    
    Paragraph titulo;

    public Plantilla(List<ProgramaVuelo> listaPV, String fecha) {
        this.fecha = fecha;
        this.listaPV = listaPV;
        
        titulo = new Paragraph("Planes de vuelo con fecha " + fecha);
        documento = new Document();
    }
    
    public void crearPlantilla(){
        try{
            archivo = new FileOutputStream("ReportePrograma.pdf");
            PdfWriter.getInstance(documento, archivo);
            documento.open();
            DAOLugar daol = new LugarImp();
            DAOAerolinea daoA = new AerolineaImp();
            titulo.setAlignment(1);
            documento.add(titulo);
            for (ProgramaVuelo pv : listaPV){
                
                System.out.println(pv.getIdAeropuerto());
                Lugar aeropuerto = daol.obtenerLugarById(pv.getIdAeropuerto());
                Lugar origen = daol.obtenerLugarById(pv.getIdOrigen());
                Lugar destino = daol.obtenerLugarById(pv.getIdDestino());
                Aerolinea aerolinea = daoA.obtenerAerolineaByCod(pv.getCodLinea());            
                
                
                
                documento.add(Chunk.NEWLINE);
                documento.add(new Paragraph("Plan de Vuelo del "+ aeropuerto.getNombre() + " con fecha " + fecha));
                
                
                documento.add(new Paragraph("Codigo plan de vuelo: " + pv.getId()));
                documento.add(new Paragraph("Aerolinea: " + aerolinea.getNombre()));
                documento.add(new Paragraph("Aeropuerto origen: " + origen.getNombre()));
                documento.add(new Paragraph("Aeropuerto destino: " + destino.getNombre()));
                
            }
            
            
            documento.close();
            System.out.println("Reporte creado exitosamente");
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    
    
    
            
    
    
    
}
