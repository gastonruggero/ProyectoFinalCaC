<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "fsj.proyecto.integrador.MySqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
<title>Intranet</title>
</head>
<body>
<header>
<h1>Informe de propuestas</h1>
<a href="listaTickets.jsp"><h1>Historial de tickets</h1></a>

</header>
<main>
<% 
MySqlConexion conexion = new MySqlConexion();
		//System.out.println(conexion.conectar());
		
		Connection cn=null;
		PreparedStatement pstm=null;
		Statement stm=null;
		String query = "";
		int id;
		String nombre;
		String email;
		String descripcion;
		cn = conexion.conectar();
		
		try {
			stm = cn.createStatement();
			ResultSet rs = stm.executeQuery("SELECT * FROM idea");		
		
			while (rs.next()) {
			id = rs.getInt(1);
			 nombre = rs.getString(2);
			email = rs.getString(3);
			descripcion=rs.getString(4);
			%>
			<div class="contIntra"><h1 class="cverde"><%out.println(+id + " - "+nombre+" - "+email);%></h1><p class="texto" style="color:black; text-align:left"><%out.println(descripcion);%></p>
			</
			</div>
			<%
			
		}
		} catch (SQLException e){
			e.printStackTrace();
			
		}
		
	
		
		
		%>
		</main>
</body>
</html>
</body>
</html>