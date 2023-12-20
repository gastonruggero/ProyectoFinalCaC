<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "fsj.proyecto.integrador.MySqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Generador de ticket</title>
<link rel="stylesheet" href="./style.css"> 
    <link rel="icon" type="image/x-icon" href="./assets/img/favicon.ico">
</head>
<body>
<header>
        <div class="logo">
            <img src="./assets/img/codoacodo.png"/><h1>Conf. Bs. As.</h1>
            <nav class="navBar">
            <a class="navItem" href="./index.html#imagenPrincipal">La conferencia</a>
            <a class="navItem" href="./index.html#cajaJuegos">Los oradores</a>
            <a class="navItem" href="./index.html#staff">El lugar y la fecha</a>
            <a class="navItem" href="./index.html#ideas">Conviértete en orador</a>
            <a class="navItem" href="">Comprar ticket</a>
            </nav>
     </div>
</header>
<main>

<%
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String email = request.getParameter("email");
String cantidad = request.getParameter("cantidad");
String categoria = request.getParameter("categoria");
//defino variables - entrada (valor full)-rate(descuentos)
int entrada=200;
int cant;
double rate=1;
cant =  Integer.parseInt(cantidad);
%>
<% 
String cat="";
switch (categoria){
case "0":
cat ="Sin beneficio";
rate=1;
break;
case "1": 
cat="Estudiante";
rate=.2;
break;
case "2": 
cat="Trainee";
rate=.5;
break;
case "3": 
cat ="Junior";
rate=.85;
break;
}
double total=Math.ceil(cant*rate*entrada);

//establezco conexión con el servido y hago el update
MySqlConexion conexion= new MySqlConexion();
Connection cn = conexion.conectar();
try {
	Statement stm = cn.createStatement();
	
	stm.executeUpdate("INSERT INTO tickets (nombre, apellido, email, cantidad, cat) VALUES ('"+nombre+"', '"+apellido+"',  '"+email+"',  '"+cantidad+"',  '"+cat+"')");
stm.close();
cn.close();
}
catch (SQLException e){
	e.printStackTrace();
	
}


%>
<div class="contTicket"><div class="borderTicket">
<h1 style="text-align:center; margin: 0 5%;">Generamos la siguiente reserva: </h1>


<h2 class="seccionTitulo">Reserva a nombre de <% out.println(nombre + " "+apellido); %> </h2>


<h2><%out.println(cat+" x "+cantidad); %></h2>
<h1 class="contCat" style="margin:10px;">
<% out.println("ARS "+total);%>
</h1>
<p >Selecciona tu forma de pago o <a href="modificaVenta.jsp" style="color:blue;">modifica tu ticket</a></p>
<br>
<div class="cajaLogos">
<a href="https://www.modo.com.ar"><img class="logoPago" src="./assets/img/MODO.png"></a>
<a href="https://www.mercadopago.com.ar"><img class="logoPago" src="./assets/img/MP.png"></a>
<a href="https://paypal.com"><img class="logoPago" src="./assets/img/PAYPAL.png"></a>

</div>

</div>
</div>
</main>
    <footer>
            <div class="footBar">
        <a class="footItem" href="login.html">LOGIN</a>
        <a class="footItem">Contáctanos</a>
        <a class="footItem">Prensa</a>
        <a class="footItem">Conferencias</a>
        <a class="footItem">Términos y condiciones</a>
        <a class="footItem">Privacidad</a>
        <a class="footItem">Estudiantes</a>
            </div>
        </footer>
</body>
</html>