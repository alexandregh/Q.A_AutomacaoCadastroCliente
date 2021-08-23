*** Settings ***
Resource        ../../Resources/Resource.robot

***Keywords***
Validar Página de Cadastro de Cliente
    Get Text    ${textoInicialCadastroCliente}
    Capture Page Screenshot

Preencher Campo Nome sem Sucesso
    TempoExecução
    Input Text         id=nome_cliente     ${EMPTY}

    TempoExecução
    Input Text         id=cpf              ${CLIENTE.CPF}
    Capture Page Screenshot

Preencher Campo CPF sem Sucesso
    TempoExecução
    Input Text         id=nome_cliente     ${CLIENTE.nome}

    TempoExecução
    Input Text         id=cpf              ${EMPTY}
    Capture Page Screenshot

Preencher Campos de Cadastro de Cliente
    TempoExecução
    Input Text         id=nome_cliente     ${CLIENTE.nome}

    TempoExecução
    Input Text         id=cpf              ${CLIENTE.CPF}

    TempoExecução
    Input Text         id=dtnasc           ${CLIENTE.dataNascimento}

    Click Element      xpath=//input[@value='masculino']         
                ...    ${CLIENTE.sexo}
    TempoExecução

    TempoExecução
    Input Text         id=prependedtext    ${CLIENTE.telefone}

    TempoExecução
    Input Text         id=email            ${CLIENTE.email}

    TempoExecução
    Input Text         id=cep              ${CLIENTE.CEP}

    Wait Until Keyword Succeeds     10s     200ms   Realizar Pesquisa Por CEP Aguardando a Rua "${rua}"

    TempoExecução
    Input Text         id=numero           ${CLIENTE.numero}

    Click Element      xpath=//select/option[@value='Casado(a)']         
                ...    ${CLIENTE.estadoCivil}
    TempoExecução

    Click Element      xpath=//span[contains(text(),'Testes Automatizados')]/preceding::input[1]         
                ...    ${CLIENTE.interesses}
    TempoExecução

    Click Element      xpath=//span[contains(text(),'Desenvolvimento de Software')]/preceding::input[1]         
                ...    ${CLIENTE.interesses}
    TempoExecução

    Click Element      xpath=//span[contains(text(),'Video Games')]/preceding::input[1]       
                ...    ${CLIENTE.interesses}
    TempoExecução

    Click Element      xpath=//span[contains(text(),'Livros')]/preceding::input[1]         
                ...    ${CLIENTE.interesses}
    TempoExecução
    Capture Page Screenshot

Cadastrar Cliente sem Sucesso (Nome Obrigatório)
    Preencher Campo Nome sem Sucesso
    Click Element                    id=cadastrar
    Wait Until Element Is Visible    id=msg    3s
    Get Text    ${msgNome}
    TempoExecução
    TempoExecução
    Capture Page Screenshot

Cadastrar Cliente sem Sucesso (CPF Obrigatório)
    Preencher Campo CPF sem Sucesso
    Click Element                    id=cadastrar
    Wait Until Element Is Visible    id=msg    3s
    Get Text    ${msgCPF}
    TempoExecução
    TempoExecução
    Capture Page Screenshot

Cadastrar Cliente com Sucesso
    Click Element                   id=cadastrar
    Wait Until Element Is Visible   id=msg      3s
    Get Text                        ${msgOk}
    TempoExecução
    TempoExecução
    Capture Page Screenshot

Realizar Logout
    Click Element       xpath=//button[contains(text(),'Logout')]
    Get Text            ${textoInicialHome}
    Capture Page Screenshot