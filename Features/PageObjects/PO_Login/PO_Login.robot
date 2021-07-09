***Settings***
Resource        ../../Base/Base.robot

***Variables***
### OBJETOS ###
&{USER}             usuarioname=alexandre
         ...        password=123456
         ...        fakeusuarioname=abc
         ...        fakepassword=9876543210123456789
         ...        usuarionamevazio=${EMPTY}
         ...        passwordvazio=${EMPTY}

### VARIÁVEIS ###

***Keywords***
Acessar Página de Login sem Sucesso
    Go To       ${LinkQualquer}
    Get Text    ${textoQualquer}
    TempoExecução

Acessar Página de Login com Sucesso
    Go To       ${linkHome}
    Get Text    ${textoInicialHome}
    TempoExecução

Preencher Campos de Login sem Sucesso (Login Inválido)
    TempoExecução
    Input Text      id=username     ${USER.fakeusuarioname}

    TempoExecução
    Input Password  id=password     ${USER.password}

Preencher Campos de Login sem Sucesso (Login Vazio)
    TempoExecução
    Input Text      id=username     ${USER.usuarionamevazio}

    TempoExecução
    Input Password  id=password     ${USER.password}

Preencher Campos de Login sem Sucesso (Senha Inválida)
    TempoExecução
    Input Text      id=username     ${USER.usuarioname}

    TempoExecução
    Input Password  id=password     ${USER.fakepassword}

Preencher Campos de Login sem Sucesso (Senha Vazia)
    TempoExecução
    Input Text      id=username     ${USER.usuarioname}

    TempoExecução
    Input Password  id=password     ${USER.passwordvazio}

Preencher Campos de Login sem Sucesso (Login / Senha Inválidos)
    TempoExecução
    Input Text      id=username     ${USER.fakeusuarioname}

    TempoExecução
    Input Password  id=password     ${USER.fakepassword}

Preencher Campos de Login com Sucesso
    TempoExecução
    Input Text      id=username     ${USER.usuarioname}

    TempoExecução
    Input Password  id=password     ${USER.password}

Realizar Login
    Sleep           2
    Click Element   id=login