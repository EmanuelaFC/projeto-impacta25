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

## **Diagramas**
- **Diagrama de Casos de Uso**: https://www.mermaidchart.com/app/projects/ec90dc90-43e2-414f-8773-8df8f6a9ebe9/diagrams/67fbc7a9-fda2-4745-8422-759dfc1f2d98/share/invite/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkb2N1bWVudElEIjoiNjdmYmM3YTktZmRhMi00NzQ1LTg0MjItNzU5ZGZjMWYyZDk4IiwiYWNjZXNzIjoiVmlldyIsImlhdCI6MTc0OTMwOTU1Mn0.HUTIK4gewYHQ3q_z2jE2ftw1K2Z0gkIaxLVlO5EDfZM
-  **Diagrama de Classes**: https://www.mermaidchart.com/app/projects/ec90dc90-43e2-414f-8773-8df8f6a9ebe9/diagrams/a43a1848-863e-4a65-9104-12367ccb35e9/share/invite/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkb2N1bWVudElEIjoiYTQzYTE4NDgtODYzZS00YTY1LTkxMDQtMTIzNjdjY2IzNWU5IiwiYWNjZXNzIjoiVmlldyIsImlhdCI6MTc0OTMwOTE0NH0.3zBAKgeA_K2sMf1ct84hjrhs7maeHtyYHD2PSY1zNTI

## **Trello - Planejamento do projeto**
https://trello.com/invite/b/67bb12b4d8bfd79da106b121/ATTIafa6e285e1f64ddff43c2fa50890815b17BE9DC9/projeto-de-software-impacta25
