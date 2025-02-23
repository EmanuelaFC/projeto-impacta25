// app.js
const express = require('express');
const bodyParser = require('body-parser');
const connection = require('./configdb/db');  // Importa a conexão com o banco de dados

const app = express();
app.use(bodyParser.json());  // Para analisar o corpo das requisições como JSON

// Endpoint para criar o usuário e associar interesses, experiências e disponibilidade
app.post('/inscricao', (req, res) => {
  const { nome, email, telefone, interesse, descricao} = req.body;

  // Verificar se os dados obrigatórios foram fornecidos
  if (!nome || !email || !telefone) {
    return res.status(400).json({ error: 'Nome, email e telefone são obrigatórios' });
  }

  // Iniciar a transação
  connection.beginTransaction((err) => {
    if (err) {
      return res.status(500).json({ error: 'Erro ao iniciar transação', details: err });
    }

    // Inserir o usuário na tabela de usuarios
    const queryUsuario = 'INSERT INTO usuarios (nome, email, telefone, interesse, descricao) VALUES (?, ?, ?, ?, ?)';
    connection.query(queryUsuario, [nome, email, telefone, interesse, descricao], (err, result) => {
      if (err) {
        return connection.rollback(() => {
          res.status(500).json({ error: 'Erro ao criar usuário', details: err });
        });
      }
      if (res) {
        res.status(201).json({ message: 'Usuário cadastrado com sucesso!'})
      }
    })
  });
});

// Iniciar o servidor
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
