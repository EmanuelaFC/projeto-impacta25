# **Formulário de Inscrição no Grupo de Ativismo Ambiental**

Este projeto implementa um formulário de inscrição para que os usuários possam se inscrever em um grupo de ativismo ambiental. O formulário coleta dados como nome, e-mail, telefone, áreas de interesse, experiência e disponibilidade, e os envia para uma API para processamento e armazenamento.

## **Funcionalidades**
- **Campos do Formulário**: Nome, e-mail, telefone, áreas de interesse, experiência e disponibilidade.
- **Validação**: O formulário valida dados antes do envio.
- **Envio de Dados**: Os dados são enviados via POST para a API e armazenados no banco de dados.

## **Estrutura do Projeto**
- **Frontend**: Testes de UI e preenchimento de formulário com **Cypress**.
- **Backend**: Testes de API usando **Robot Framework**.
- **Banco de Dados**: Validação de dados com **DBeaver**.

## **Como Rodar os Testes com Robot Framework**
- **Pré-requisitos**: Python instalado, pip instalado, 
- **Instalar dependências**:pip install -r requirements.txt

## **Executar os Testes**
- **Testes de Frontend**: Navegue até o diretório dos testes de frontend:
cd testes

Execute os testes:
teste_front.robot


- **Testes de Backend**: Navegue até o diretório dos testes de backend:
cd testes

Execute os testes:
teste_api_resources.robot

- **Testes de Banco de Dados**: Configure o banco de dados local ou de teste.
Execute os testes usando a ferramenta DBeaver, conforme configuração do ambiente.

