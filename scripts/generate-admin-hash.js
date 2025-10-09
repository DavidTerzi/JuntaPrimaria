// scripts/generate-admin-hash.js
const bcrypt = require("bcryptjs");

async function generateHash() {
  const password = "admin123"; // Contraseña por defecto
  const saltRounds = 10;

  try {
    const hash = await bcrypt.hash(password, saltRounds);
    console.log("=".repeat(60));
    console.log("HASH GENERADO PARA LA CONTRASEÑA ADMIN");
    console.log("=".repeat(60));
    console.log(`Contraseña: ${password}`);
    console.log(`Hash: ${hash}`);
    console.log("=".repeat(60));
    console.log("Copia este hash y úsalo en el script SQL auth-tables.sql");
    console.log("en la línea del INSERT del usuario admin");
    console.log("=".repeat(60));
  } catch (error) {
    console.error("Error generando hash:", error);
  }
}

generateHash();
