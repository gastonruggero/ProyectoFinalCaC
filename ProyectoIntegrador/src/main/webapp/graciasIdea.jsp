<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "fsj.proyecto.integrador.MySqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css"> 
    <link rel="icon" type="image/x-icon" href="./assets/img/favicon.ico">
      <!--<link rel="script" href="./js/revisa.js">-->
    <title>Proyecto integrador</title>
</head>
<body>
    <header>
<div class="logo">
    <img src="./assets/img/codoacodo.png"/><h1>Conf. Bs. As.</h1>
    <nav class="navBar">
    <a class="navItem" href="#imagenPrincipal">La conferencia</a>
    <a class="navItem" href="#cajaJuegos">Los oradores</a>
    <a class="navItem" href="#staff">El lugar y la fecha</a>
    <a class="navItem" href="#ideas">Convi�rtete en orador</a>
    <a class="navItem" href="./tickets.html">Comprar ticket</a>
    </nav>
   
</div>
</header>
<main>
<section id="imagenPrincipal">
    <h3 class="texto principal">Conf Bs As</h3><p class="texto principal">
    Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia con los expertos que est�n creando el futuro de Internet. Ven a conocer mienbros de nuestros eventos, estudiantes de Codo a Codo y oradores de primer nivel que tenemos para t�. Te esperamos!</p><a class="texto blog" href="./tickets.html">Comprar tickets</a>
    <a class="texto idea" href="#ideas">Quiero ser orador</a>
</section>

<section id="cajaJuegos">
   <div class="seccionTitulo"><p>Conoc� a los</p><h2>oradores</h2></div>
    <div class="juego">
      <img alt="imagen de Steve Jobs"class="vistaJuego" src="./assets/img/steve.jpg"/> <p><span class="cat react"></span><span class="pro javascript"></span></p><h3 class="tituloJuego">Steve Jobs</h3><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit aliquid maxime nobis expedita, excepturi dicta accusamus, vitae, inventore porro enim libero? Consequuntur aliquid ea beatae, quisquam omnis in. Cupiditate, ipsum!</p></div>
      
    <div class="juego"><img alt="imagen de Bill Gates"class="vistaJuego" src="./assets/img/bill.jpg"/> <p><span class="cat react"></span><span class="pro javascript"></p> <h3 class="tituloJuego">Bill Gates</h3><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Animi quidem obcaecati optio incidunt, iste, fuga sequi repellat dolorem dolore id maxime, nostrum blanditiis architecto tenetur numquam beatae autem deserunt accusantium!</p></div>

    <div class="juego"><img alt="imagen de Ada Lovelace"class="vistaJuego" src="./assets/img/ada.jpeg"/><p><span class="cat negocios"></span><span class="pro startups"></span></p><h3 class="tituloJuego">Ada Lovelace</h3><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum labore nihil distinctio minima quisquam soluta inventore culpa dicta debitis quo recusandae consequatur voluptatibus expedita tempore illum, ex ducimus ipsa officia!</p></div>
    
  
</section>

<section id="staff">

<div class="divStaff">
    <img src="./assets/img/hawaii2.jpg"/>
</div>
<div class="divStaff texto"><h3>Bs As - Octubre</h3><p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere dolorum sapiente voluptatibus inventore iure unde molestiae, mollitia sint! Porro tenetur id laborum explicabo optio, illo pariatur culpa totam omnis cum?</p></div>

</section>

<section id="ideas">
    <div class="seccionTitulo"><p>Convi�rtete en</p><h2>orador</h2></div>
   
    
 <div class="tituloFormulario">An�tate como orador para dar una charla ignite. Cu�ntanos de qu� quieres hablar. 
        <form class="formulario" id="formularioIdeas" method="post">
    
    
            <div class="lineaFormulario">
                <input class="campo" name="nombre" type="text" id="nombre" placeholder="Nombre">
                <input class="campo" name="email" type="email" id="email" placeholder="Direcci�n de email v�lida"></div>
            <div class="lineaFormulario">
<textarea id="tuIdea" name="tuIdea" placeholder="Contanos..."></textarea></div>
<button id="resumen" type="button">Enviar</button>

</form></div>
 
   
 <%
    
    String nombre = request.getParameter("nombre");
    String email = request.getParameter("email");
    String tuIdea = request.getParameter("tuIdea");
    
    MySqlConexion conexion= new MySqlConexion();
    Connection cn = conexion.conectar();
    try {
		Statement stm = cn.createStatement();
		stm.executeUpdate("INSERT INTO idea VALUES (null,'"+nombre+"','"+email+"','"+tuIdea+"')");
		}
    catch (SQLException e){
		e.printStackTrace();
		
	}
    
    //(nombre + ", gracias por enviarnos tu propuesta, te sugerimos estar atento a la direcci�n de mail enviada: "+email+"Finalmente, te sugerimos consultar nuestro calendario para ver las otras propuestas");
    %>
     </br></br></div>
</section>
</main>
<footer>
    <div class="footBar">
<a class="footItem" href="login.html">LOGIN</a>
<a class="footItem">Cont�ctanos</a>
<a class="footItem">Prensa</a>
<a class="footItem">Conferencias</a>
<a class="footItem">T�rminos y condiciones</a>
<a class="footItem">Privacidad</a>
<a class="footItem">Estudiantes</a>
    </div>
</footer>
<script >
//esto es JavaScript 
  function permisosMenu() {
      var cadena =" <%=nombre + ", gracias por enviarnos tu propuesta, te sugerimos estar atento a la direcci�n de mail enviada: "+ email%>";
  alert(cadena);
}
permisosMenu();
</script> 
<script src="./js/revisa.js"></script>
</body>
</html>