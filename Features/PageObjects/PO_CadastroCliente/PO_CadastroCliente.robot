***Settings***
Resource        ../../Base/Base.robot

***Variables***
### OBJETOS ###
&{CLIENTE}          nome=Benjamin Carlos Raul Nogueira
            ...     CPF=03476000850
            ...     dataNascimento=15051947
            ...     sexo=${EMPTY}
            ...     telefone=99999999999
            ...     email=bbenjamincarlosraulnogueira@gm.com
            ...     CEP=21852580
            ...     numero=9
            ...     estadoCivil=${EMPTY}
            ...     interesses=${EMPTY}

### VARIÁVEIS ###
${textoInicialCadastroCliente}      xpath=//*[contains(text(), "Cadastro de Cliente")]
${rua}                              Rua Congo

### Mensagens
${msgOk}                            xpath=//div[contains(text(),'Cliente cadastrado com sucesso!')]

***Keywords***
1 - Validar Página de Cadastro de Cliente
    Get Text    ${textoInicialCadastroCliente}

2 - Preencher Campos de Cadastro de Cliente
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

3 - Cadastrar Cliente
    Click Element                   id=cadastrar
    Wait Until Element Is Visible   id=msg      3s
    Get Text                        ${msgOk}
    TempoExecução

4 - Realizar Logout
    Click Element       xpath=//button[contains(text(),'Logout')]
    Get Text            ${textoInicialHome}


Realizar Pesquisa Por CEP Aguardando a Rua "${rua}"
    Click Element                   xpath=//button[contains(text(),'Pesquisar')]
    ${ruaEsperada}=                 Get Element Attribute           id=rua        value
    Should Be Equal As Strings      ${ruaEsperada}         ${rua}