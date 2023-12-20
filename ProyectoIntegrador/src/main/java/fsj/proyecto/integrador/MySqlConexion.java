package fsj.proyecto.integrador;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class MySqlConexion {
	private static final String CONTROLADOR = "com.mysql.cj.jdbc.Driver";
	private static final String URL="jdbc:mysql://localhost:3306/trabajofinaljava";
	private static final String USSER = "root";
	private static final String PASS = "";
	
	static {
try {
	Class.forName(CONTROLADOR);
	System.out.println("Se cargó el controlador correcto");
	}
catch (ClassNotFoundException e) {
	System.err.println("Error al cargar el controlador");
	e.printStackTrace();
}
	
}
public Connection conectar() {
	
	Connection conexion = null;

try {
	conexion = DriverManager.getConnection(URL, USSER, PASS);
	System.out.println("Se generó la conexión");
	}
	catch (SQLException e) {
		System.out.println("Error al establecer la conexión");
		e.printStackTrace();
	}
return conexion;
}

}