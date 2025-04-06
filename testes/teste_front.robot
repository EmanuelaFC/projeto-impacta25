*** Settings ***
Documentation     Essa suite testa o formulário
Resource    teste_resources.robot
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de teste 01 - Inscrição válida 
    [Documentation]    Este teste verifica o envio válido de dados da inscrição.
    [Tags]    inscricao_valida
    Acessar a page do formulário
    Verificar se aparece o título "Inscrição para Participar do Grupo de Ativismo Ambiental"
    Inserir Nome Completo "Joana da Silva"
    Inserir E-mail "joanasilva@email.com"
    Inserir Telefone "11 98657724"
    Selecionar a Área de Interesse de sua escolha
    Responder a pergunta "Por que você quer participar?"


Caso de teste 02 - Inscrição invalida
    [Documentation]    Este teste verifica o envio invalido de dados da inscrição.
    [Tags]    inscricao_invalida