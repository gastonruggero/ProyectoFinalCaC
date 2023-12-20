function calcularTotal(){

var nombre = document.getElementById('nombre');
var apellido =document.getElementById("apellido");
var email = document.getElementById("email");
var cantidad = document.getElementById("cantidad");
var tipo = document.getElementById("tipo");
const emailValido = email => {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
  }
const nombreValido = nombre =>{
    return /^[A-Za-zÑñ]/.test(nombre);
}
const apellidoValido = apellido =>{
    return /^[A-Za-zÑñ]/.test(apellido);
} 
const tipoValido = tipo =>{
    return /[0-3]/.test(tipo);
}

if (nombre.value===""){
    alert("complete el nombre de pila del comprador");
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
if (apellido.value===""){
    alert("complete el apellido del comprador");
    apellido.focus(); 
     apellido.classList.add("incorrecto");
     return false;
} 
if (!apellidoValido(apellido.value)) {
    alert("Por favor, escribe un apellido válido");
    apellido.focus();
    apellido.classList.add("incorrecto");
    return false;
    }

if (email.value===""){
    alert("complete el email del comprador");
    email.focus();
    email.classList.add("incorrecto"); 
    return false;   
} 
if (!emailValido(email.value)) {
    alert("Por favor, escribe un correo electrónico válido");
    email.focus();
    email.classList.add("incorrecto"); 
    return false;
}
if (cantidad.value==="0"){
    alert("Ingrese una cantidad de entradas")
    cantidad.focus();    
    cantidad.classList.add("incorrecto"); 
    return false;
}
if (!tipoValido(tipo.value)){
    alert("Por favor, escriba una categoria de ingreso al evento");
    tipo.focus();
    tipo.classList.add("incorrecto");
}

nombre.classList.remove("incorrecto");
apellido.classList.remove("incorrecto");
email.classList.remove("incorrecto");
cantidad.classList.remove("incorrecto");
tipo.classList.remove("incorrecto");
if (tipo.value==0){
    resumenTotal= cantidad.value * 200;
}
if (tipo.value==1){
    resumenTotal= cantidad.value * 200 * .2;
}
if (tipo.value==2){
    resumenTotal= cantidad.value * 200 * .5;
}
if (tipo.value==3){
    resumenTotal= cantidad.value * 200 * .85;
}
document.getElementById("totalPagar").innerText = resumenTotal;
}



const BTNCLICK= document.getElementById("resumen");
BTNCLICK.addEventListener("click",calcularTotal);