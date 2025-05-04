*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    http://localhost:3000
${ENDPOINT}    /inscricao
&{HEADERS}     Content-Type=application/json

*** Test Cases ***
Enviar Inscricao Com Sucesso
    ${BODY}=    Create Dictionary
    ...    nome=João
    ...    email=jpauloii@teste.com
    ...    telefone=11956872456
    ...    interesse=outros
    ...    descricao=agro

    Create Session    minha_api    ${BASE_URL}
    ${RESPONSE}=    Post Request    minha_api    ${ENDPOINT}    json=${BODY}    headers=${HEADERS}
    
    Log    ${RESPONSE.status_code}
    Log    ${RESPONSE.text}
    Request Should Be Successful

Enviar Inscricao Com Erro de campo Nome vazio
    ${BODY}=    Create Dictionary
    ...    nome=
    ...    email=jpauloii@teste.com
    ...    telefone=11956872456
    ...    interesse=outros
    ...    descricao=agro

    Create Session    minha_api    ${BASE_URL}
    ${RESPONSE}=    POST On Session    minha_api    ${ENDPOINT}    json=${BODY}    headers=${HEADERS}    expected_status=400
    
    Log    ${RESPONSE.status_code}
    Log    ${RESPONSE.text}

Enviar Inscricao Com Erro de campo Email vazio
    ${BODY}=    Create Dictionary
    ...    nome=Emanuela
    ...    email=
    ...    telefone=11956872456
    ...    interesse=outros
    ...    descricao=agro

    Create Session    minha_api    ${BASE_URL}
    ${RESPONSE}=    POST On Session    minha_api    ${ENDPOINT}    json=${BODY}    headers=${HEADERS}    expected_status=400
    
    Log    ${RESPONSE.status_code}
    Log    ${RESPONSE.text}

Enviar Inscricao Com Erro de campo Telefone vazio
    ${BODY}=    Create Dictionary
    ...    nome=Emanuela
    ...    email=jpauloii@teste.com
    ...    telefone=
    ...    interesse=outros
    ...    descricao=agro

    Create Session    minha_api    ${BASE_URL}
    ${RESPONSE}=    POST On Session    minha_api    ${ENDPOINT}    json=${BODY}    headers=${HEADERS}    expected_status=400
    
    Log    ${RESPONSE.status_code}
    Log    ${RESPONSE.text}

Enviar Inscricao Com Erro de campo Telefone com menos de 11 digitos
    ${BODY}=    Create Dictionary
    ...    nome=Emanuela
    ...    email=jpauloii@teste.com
    ...    telefone=111
    ...    interesse=outros
    ...    descricao=agro

    Create Session    minha_api    ${BASE_URL}
    ${RESPONSE}=    POST On Session    minha_api    ${ENDPOINT}    json=${BODY}    headers=${HEADERS}    expected_status=400
    
    Log    ${RESPONSE.status_code}
    Log    ${RESPONSE.text}
    
