/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package agenda;

import agenda.datos.DBContactos;
import agenda.datos.DBCitas;
import agenda.datos.logica.Citas;
import agenda.datos.logica.Contacto;

/**
 *
 * @author Estudiantes
 */
public class Agenda {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        DBContactos dbcontactos = new DBContactos();
        Contacto[] contactos = dbcontactos.getContactos();
        
        for (Contacto contacto : contactos) {
            System.out.println("Nombre: " + contacto.getNombre() + " " + contacto.getApellido());
        }
        
        DBCitas dbcitas = new DBCitas();
        Citas[] citas = dbcitas.getCitas();
        
        for (Citas cita : citas) {
            System.out.println("Nombre: " + cita.getId() + " " + cita.getLugar());
        }
    }

}
