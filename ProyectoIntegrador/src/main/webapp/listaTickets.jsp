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
<h1>Historial de tickets</h1>
<a href="listaOradores.jsp"><h1>Informe de propuestas</h1></a>

</header>
<main>
<<% 
MySqlConexion conexion = new MySqlConexion();
		Connection cn=null;
		PreparedStatement pstm=null;
		Statement stm=null;
		String query = "";
		int id;
		String nombre;
		String apellido;
		String email;
		String cantidad;
		String cat;
		String total;
		
		cn = conexion.conectar();
		
		try {
			stm = cn.createStatement();
			ResultSet rs = stm.executeQuery("SELECT * FROM tickets");		
		
			while (rs.next()) {
			id = rs.getInt(1);
			nombre = rs.getString(2);
			apellido = rs.getString(3);
			email = rs.getString(4);
			cantidad = rs.getString(5);
			cat = rs.getString(6);
			total = rs.getString(7);
			%><div class="contIntra">
			<h1><%out.println(+id + " - "+apellido+", "+nombre);%></h1>
			<table>
			<tr>        
    <th>ID de ticket</th>
    <th>Apellido</th>
    <th>Nombre</th>
    <th>Contacto</th>
    <th>Cantidad</th>
    <th>Categoría</th> 
    <th>Total</th>   
  </tr>
  	<tr>        
    <th><%=id %></i></th>
    <th><%=apellido %></th>
    <th><%=nombre %></th>
    <th><a style="color:blue;" href="mailto:<%=email %>"><%=email%></a></th>
    <th><%=cantidad %></th>
    <th><%=cat %></th> 
    <th><%=total %></th>   
  </tr>
  </table></div>
  <%
			
		}
		} catch (SQLException e){
			e.printStackTrace();
			
		}
		try {
			
			if (stm!=null) {
				stm.close();
			}
			if (cn!=null) {
				cn.close();
			}
		}
		catch (SQLException e){
			e.printStackTrace();
			
		}
		
		%>
		</main>
</body>
</html>