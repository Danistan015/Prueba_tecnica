// Revisar lista de contactos eliminando los correos invalidos
function depContactos(contactos) {
  return contactos.filter(contacto => validarCorreo(contacto.correo));
}

// Lista de contactos
const contactos = [
  { nombre: "Daniela", correo: "danielaa@gmail.com" },
  { nombre: "Valeria", correo: "valeriagmail.com" }, 
  { nombre: "Jefri", correo: "jefri@eam.edu.com" },
  { nombre: "Papa", correo: "papa@" },                
  { nombre: "Mama", correo: "mama@mama.co" }
];

// Mostrar resultados
console.log("Total contactos:");
console.log(contactos);

const contactosDepurados = depContactos(contactos);

console.log("\nContactos con correos validos:");
console.log(contactosDepurados);


function validarCorreo(correo) {
  const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return regex.test(correo);
}


