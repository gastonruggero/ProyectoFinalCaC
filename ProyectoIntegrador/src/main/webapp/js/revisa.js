var erro= new Number;
function revisarForm(){
    var nombre = document.getElementById('nombre');
    var email = document.getElementById("email");
    var tuIdea = document.getElementById("tuIdea");
   
    const emailValido = email => {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
      }
    const nombreValido = nombre =>{
        return /^[A-Za-zÑñ]/.test(nombre);
    }
    
    if (nombre.value===""){
        alert("complete el nombre de pila del postulante");
        nombre.focus(); 
        nombre.classList.add("incorrecto"); 
        return false;    
        
     }
    if (!nombreValido(nombre.value)) {
        alert("Por favor, escribe un nombre de pila válido");
        nombre.focus();
        nombre.classList.add("incorrecto"); 
        return false; 
         }
    if (email.value===""){
        alert("complete el email del postulante");
        email.focus();
        email.classList.add("incorrecto"); 
        return false;  
}
 if (!emailValido(email.value)) {
        alert("Por favor, escribe email con el formato XX arroba servidor, por ejemplo: alumno@yahoo.com");
        email.focus();
        return false; 
         }
if (tuIdea.value===""){
    alert("comentanos tu idea");
    tuIdea.focus();
    tuIdea.classList.add("incorrecto"); 
    return false;  
}
idea=tuIdea.value;
if (idea.length < 50){
    alert("Te pedimos un mínimo de 50 caracteres describiendo tu proyecto.");
    tuIdea.focus();
    tuIdea.classList.add("incorrecto");
    return false;
}
if (!emailValido(email.value)) {
    alert("Por favor, escribe un correo electrónico válido");
    email.focus();
    email.classList.add("incorrecto"); 
    return false;
}

nombre.classList.remove("incorrecto");
email.classList.remove("incorrecto");
tuIdea.classList.remove("incorrecto");
//cambia el status del botón por submit
document.getElementById('formularioIdeas').setAttribute('action', 'graciasIdea.jsp');
document.getElementById('resumen').setAttribute('type', 'submit');
}
const BTNCLICK= document.getElementById("resumen");
BTNCLICK.addEventListener("click",revisarForm);



