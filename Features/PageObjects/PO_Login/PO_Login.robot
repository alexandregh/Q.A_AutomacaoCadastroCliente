***Settings***
Resource        ../../Resources/Resource.robot

***Keywords***
Acessar Página de Login sem Sucesso
    Go To       ${LinkQualquer}
    Get Text    ${textoQualquer}
    TempoExecução
    Capture Page Screenshot

Acessar Página de Login com Sucesso
    Go To       ${linkHome}
    Get Text    ${textoInicialHome}
    TempoExecução
    Capture Page Screenshot

Preencher Campos de Login sem Sucesso (Login Inválido)
    TempoExecução
    Input Text      id=username     ${USER.fakeusuarioname}

    TempoExecução
    Input Password  id=password     ${USER.password}
    Capture Page Screenshot

Preencher Campos de Login sem Sucesso (Login Vazio)
    TempoExecução
    Input Text      id=username     ${USER.usuarionamevazio}

    TempoExecução
    Input Password  id=password     ${USER.password}
    Capture Page Screenshot

Preencher Campos de Login sem Sucesso (Senha Inválida)
    TempoExecução
    Input Text      id=username     ${USER.usuarioname}

    TempoExecução
    Input Password  id=password     ${USER.fakepassword}
    Capture Page Screenshot

Preencher Campos de Login sem Sucesso (Senha Vazia)
    TempoExecução
    Input Text      id=username     ${USER.usuarioname}

    TempoExecução
    Input Password  id=password     ${USER.passwordvazio}
    Capture Page Screenshot

Preencher Campos de Login sem Sucesso (Login / Senha Inválidos)
    TempoExecução
    Input Text      id=username     ${USER.fakeusuarioname}

    TempoExecução
    Input Password  id=password     ${USER.fakepassword}
    Capture Page Screenshot

Preencher Campos de Login com Sucesso
    TempoExecução
    Input Text      id=username     ${USER.usuarioname}

    TempoExecução
    Input Password  id=password     ${USER.password}
    Capture Page Screenshot

Realizar Login
    Sleep           2
    Click Element   id=login
    Capture Page Screenshot