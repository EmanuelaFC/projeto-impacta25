# **Formulário de Inscrição no Grupo de Ativismo Ambiental**

Este projeto implementa um formulário de inscrição para que os usuários possam se inscrever em um grupo de ativismo ambiental. O formulário coleta dados como nome, e-mail, telefone, áreas de interesse, experiência e disponibilidade, e os envia para uma API para processamento e armazenamento.

## **Funcionalidades**
- **Campos do Formulário**: Nome, e-mail, telefone, áreas de interesse, experiência e disponibilidade.
- **Validação**: O formulário valida dados antes do envio.
- **Envio de Dados**: Os dados são enviados via POST para a API e armazenados no banco de dados.

## **Estrutura do Projeto**
- **Frontend**: Testes de UI e preenchimento de formulário com **Cypress**.
- **Backend**: Testes de API usando **Postman**.
- **Banco de Dados**: Validação de dados com **TestContainers** ou **DBUnit**.

## **Como Rodar os Testes**

### **Frontend (Cypress)**

1. **Instale as dependências**:
    ```bash
    npm install
    ```

2. **Abra o Cypress**:
    ```bash
    npm run cypress:open
    ```

### **Backend (Postman)**

1. Importe as coleções do Postman do diretório `postman/`.
2. Execute os testes no Postman.

### **Banco de Dados**

1. Configure o banco de dados local ou de teste.
2. Execute os testes de banco de dados com **TestContainers** ou **DBUnit**.

