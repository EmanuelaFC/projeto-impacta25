// db.js
const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost', // ou o IP do seu servidor MySQL
  user: 'root', // seu usuário MySQL
  password: 'admin', // sua senha MySQL
  database: 'ativismo_ambiental' // nome do seu banco de dados
});

connection.connect((err) => {
  if (err) {
    console.error('Erro ao conectar ao banco de dados:', err);
    return;
  }
  console.log('Conectado ao banco de dados MySQL');
});

module.exports = connection;
