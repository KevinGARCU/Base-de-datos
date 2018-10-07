/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package agenda.datos;

import agenda.datos.logica.Citas;
import java.sql.*;

/**
 *
 * @author Estudiantes
 */
public class DBCitas {

    DBConeccion cn;
    
    public DBCitas() {
     cn = new DBConeccion();
    }

    public Citas[] getCitas() {
        int registros = 0;

        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("SELECT count(1) as cont"
                    + " FROM citas ");
            ResultSet res = pstm.executeQuery();
            res.next();
            registros = res.getInt("cont");
            res.close();
        } catch (SQLException e) {
            System.out.println(e);
        }

        Citas[] data = new Citas[registros];

        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("SELECT con_id_contacto, "
                    + " con_lugar, "
                    + " con_hora, "
                    + " con_descripcion "
                    + "FROM citas"
                    + " ORDER BY con_id_contacto");

            ResultSet res = pstm.executeQuery();
            int i = 0;
            while (res.next()) {
                data[i] = new Citas();
                data[i].setId(res.getInt("con_id_contacto"));
                data[i].setLugar(res.getString("con_lugar"));
                data[i].setHora(res.getString("con_hora"));
                data[i].setDescripcion(res.getString("con_descripcion"));
                i++;
            }
            res.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return data;
    }
}
