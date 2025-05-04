*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${BROWSER}    chrome
${URL}    file:///C:/Users/emanu/Desktop/projeto-impacta25/frontend/index.html?nome=Emanuela+Felix&email=emanuela.felix%40hotmail.com&telefone=&interesse=plantio&experiencia=xxxx
${NOME}    id=nome
${EMAIL}    id=email
${TELEFONE}    id=telefone
${INTERESSE}    id=interesse
${EXPERIENCIA}  id=experiencia
${ENVIO}        css=button


*** Keywords ***
Abrir o navegador
    Open Browser   browser=${BROWSER}
Fechar o navegador
    Capture Page Screenshot
    Close Browser 

Acessar a page do formulário
    Go to    ${URL}
    Title Should Be    Formulário de Inscrição - Ativismo Ambiental
    Wait Until Element Is Visible    ${NOME}
    Wait Until Element Is Visible    ${EMAIL}
    Wait Until Element Is Visible    ${TELEFONE}
    Wait Until Element Is Visible    ${INTERESSE}
    Wait Until Element Is Visible    ${EXPERIENCIA}

Verificar se aparece o título "${TITULO}"
    Wait Until Page Contains   ${TITULO}
Inserir Nome Completo "${TEXTO_NOME}"
    Input Text    ${NOME}    ${TEXTO_NOME} 
Inserir E-mail "${TEXTO_EMAIL}"
    Input Text    ${EMAIL}    ${TEXTO_EMAIL}
Inserir Telefone "${TEXTO_TELEFONE}"
    Input Text    ${TELEFONE}     ${TEXTO_TELEFONE}
Selecionar a Área de Interesse de sua escolha
    Select From List By Value    ${INTERESSE}    limpeza
Responder a pergunta "Por que você quer participar?"
    Input Text    ${EXPERIENCIA}    Porque tenho vontade de ver meu bairro limpo, por isso gostaria de me inscrever nesse projeto e contribuir com essa ação.

Clicar no botão Enviar Inscrição
    Click Button    ${ENVIO}
Confirmar sucesso da inscrição
    ${mensagem}  Handle Alert
    Should Be Equal As Strings    ${mensagem}    Inscrição realizada com sucesso!

Confirmar erro da inscrição
    ${mensagem}  Handle Alert
    Should Be Equal As Strings    ${mensagem}    Erro ao enviar os dados!