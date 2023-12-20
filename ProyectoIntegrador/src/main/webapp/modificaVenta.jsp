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
    <link rel="icon" type="image/x-icon" href="./assets/img/favicon.ico">
   <!--<link rel="script" href="./js/app.js">-->
    <title>Proyecto integrador</title>
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
            <a class="navItem" >Comprar tickets</a>
            </nav>
     </div>
</header> 
 <main>
            <div class="contCat">
                <div class="cuadroCat crojo">
                    <h3>Estudiante</h3>
                    <p>Tiene un descuento</p>
                    <h3>80 %</h3>
                    <p>*presentar documentación</p>
                </div>
                <div class="cuadroCat cazul">
                        <h3>Trainee</h3>
                        <p>Tiene un descuento</p>
                        <h3>50 %</h3>
                        <p>*presentar documentación</p>
                </div>
                <div class="cuadroCat cverde">
                            <h3>Junior</h3>
                            <p>Tiene un descuento</p>
                            <h3>15 %</h3>
                            <p>*presentar documentación</p>
                                       </div>
            </div>
                        
           <section> 
           <% 
           	MySqlConexion conexion = new MySqlConexion();
		//System.out.println(conexion.conectar());
		
		Connection cn=null;
		PreparedStatement pstm=null;
		Statement stm=null;
		int id;
		int cant=0;
		String nombre ="";
		String apellido ="";
		String email="";
		String cantidad="";
		String cat="";
		String total="";
		String categoria="";
		cn = conexion.conectar();
		
		try {
			stm = cn.createStatement();
			ResultSet rsId = stm.executeQuery("SELECT * FROM tickets WHERE id_ticket = (SELECT MAX(id_ticket ) FROM tickets)");		
					
			while(rsId.next()) {
				
				int idNum = rsId.getInt(1);
				nombre = rsId.getString(2);
				apellido = rsId.getString(3);
				email = rsId.getString(4);
				cantidad = rsId.getString(5);
				cat = rsId.getString(6);
				
				 //convierto cat en categoria
					
					switch (cat){
					case "- Sin beneficio":
					categoria = "0";
					break;
					case " - Estudiante": 
					categoria= "1";
					break;
					case " - Trainee": 
					categoria="2";
					break;
					case " - Junior": 
					categoria ="3";
					break;
					
					}
					cant = Integer.parseInt(cantidad);
										
				/* String query = "UPDATE `tickets` SET `nombre`='"+nombre1+"',`apellido`='"+apellido+"',`email`='"+email+"',`cantidad`='"+cantidad+"',`cat`='"+cat+"' WHERE id_ticket = "+idNum+" ";	
				
				stm.executeUpdate(query); */
		
  stm.close();
	cn.close();
	
}
			
} 
catch (SQLException e){
	e.printStackTrace();
	
}				
		
		%>  
			           
			
               <div class="seccionTitulo"><p>Venta</p><h2>Valor de Ticket $200<h1></h2>
               </div>
               <div class="tituloFormulario">
                    <form action="actualizaForm.jsp"class="formulario" id="formularioEntradas" method="post">
                        
                        
                        <div class="lineaFormulario">
                             <input class="campo" name="nombre" type="text" id="nombre" placeholder="Nombre" value="<%= nombre%>">
                             <input class="campo" name="apellido" type="text" id="apellido" placeholder="Apellido" value="<%=apellido %>" >
                        </div>
                    
                        <div class="lineaFormulario">
                                <input class="campo entera" name="email" type="email" id="email" placeholder="Dirección de email válida" value="<%= email%>">
                            
                        </div>
                        
                        <div class="lineaFormulario">
                            <div class="elementoFormulario">
                            <label for="cantidad">Cantidad</label></br><input name="cantidad" class="campo entera" type="number" id="cantidad" value="<%= cant %>"></div>
                       <div class="elementoFormulario"><label for="tipo">Categoría</label></br><select name="categoria" class="campo entera" id="tipo">
                        <option value="<%= categoria%>" selected>--Seleccione--</option>   
                        <option value="0">Entrada sin Beneficio</option>
                       <option value="1">Estudiante</option>
                        <option value="2">Trainee</option>
                        <option value="3">Junior</option>
                        </select></div>
                   
                    </div>
                    <div class="verdeclaro"><h3>Total: <span id="totalPagar"></span></h3></div>
                    <div class="lineaFormulario">
                    <button class="elementoFormulario" id="borrar" type="reset">Borrar</button> 
                    <button class="elementoFormulario" id="resumen" type="button">Resumen</button> 
                    <button class="elementoFormulario" id="comprar" type="submit">Comprar</button> 
                </div>   
                </div>                
                    </form>
                     
                    </section>
                                
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
    <script src="./js/app.js"></script>    

</body>
</html>