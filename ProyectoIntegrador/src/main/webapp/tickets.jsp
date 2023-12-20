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
            <a class="navItem" href="./index.html#imagenPrincipal">La conferencia></a>
            <a class="navItem" href="./index.html#cajaJuegos">Los oradores</a>
            <a class="navItem" href="./index.html#staff">El lugar y la fecha</a>
            <a class="navItem" href="./index.html#ideas">Convi�rtete en orador</a>
            <a class="navItem" href="./tickets.html">Comprar tickets</a>
            </nav>
     </div>
</header>
 <main>
            <div class="contCat">
                <div class="cuadroCat crojo">
                    <h3>Estudiante</h3>
                    <p>Tiene un descuento</p>
                    <h3>80 %</h3>
                    <p>*presentar documentaci�n</p>
                </div>
                <div class="cuadroCat cazul">
                        <h3>Trainee</h3>
                        <p>Tiene un descuento</p>
                        <h3>50 %</h3>
                        <p>*presentar documentaci�n</p>
                </div>
                <div class="cuadroCat cverde">
                            <h3>Junior</h3>
                            <p>Tiene un descuento</p>
                            <h3>15 %</h3>
                            <p>*presentar documentaci�n</p>
                                       </div>
            </div>
                        
           <section>
               <div class="seccionTitulo"><p>Venta</p><h2>Valor de Ticket $200</h2>
               </div>
               <div class="tituloFormulario">
                    <form action="cargaForm.jsp"class="formulario" id="formularioEntradas" method="post">
                        
                        
                        <div class="lineaFormulario">
                             <input class="campo" name="nombre" type="text" id="nombre" placeholder="Nombre" >
                             <input class="campo" name="apellido" type="text" id="apellido" placeholder="Apellido" >
                        </div>
                    
                        <div class="lineaFormulario">
                                <input class="campo entera" name="email" type="email" id="email" placeholder="Direcci�n de email v�lida">
                            
                        </div>
                        
                        <div class="lineaFormulario">
                            <div class="elementoFormulario">
                            <label for="cantidad">Cantidad</label></br><input name="cantidad" class="campo entera" type="number" id="cantidad" placeholder="Cantidad" min="0"></div>
                       <div class="elementoFormulario"><label for="tipo">Categor�a</label></br><select name="categoria" class="campo entera" id="tipo">
                        <option selected="">--Seleccione--</option>   
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
        <a class="footItem">Preguntas Frecuentes</a>
        <a class="footItem">Cont�ctanos</a>
        <a class="footItem">Prensa</a>
        <a class="footItem">Conferencias</a>
        <a class="footItem">T�rminos y condiciones</a>
        <a class="footItem">Privacidad</a>
        <a class="footItem">Estudiantes</a>
            </div>
        </footer>
    <script src="./js/app.js"></script>
</body>
</html>
