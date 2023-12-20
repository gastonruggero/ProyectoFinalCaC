<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "fsj.proyecto.integrador.MySqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Intranet</title>
</head>
<body>
<%
String name = request.getParameter("usuario");
String pass = request.getParameter("pass");
boolean exito = false;
MySqlConexion conexion= new MySqlConexion();
Connection cn = conexion.conectar();
try{
	Statement stm=cn.createStatement();
	ResultSet rs = stm.executeQuery("SELECT usuario, pass FROM usuarios");
	while (rs.next()){
		
		if (name.equals(rs.getString(1)) && pass.equals(rs.getString(2))){
			exito=true;
					}
		
	}
	}
	catch (SQLException e){
		e.printStackTrace();
		
	}	
	if (exito){
		%>
		<jsp:include page="listaTickets.jsp"></jsp:include>
		<%
		
		
	}
	
	else {
		%>
		<jsp:include page="index.html"></jsp:include>
		<%
		
	}

%>
</body>
</html>