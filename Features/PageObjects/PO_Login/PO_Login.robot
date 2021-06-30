***Settings***
Resource        ../../Base/Base.robot

***Variables***
### OBJETOS ###
&{USER}             usuarioname=alexandre
         ...        password=123456  

### VARIÁVEIS ###

***Keywords***
1 - Acessar Página de Login
    Go To       ${linkHome}
    Get Text    ${textoInicialHome}

2 - Preencher Campos de Login
    TempoExecução
    Input Text      id=username     ${USER.usuarioname}

    TempoExecução
    Input Password  id=password     ${USER.password}

3 - Realizar Login
    Sleep           2
    Click Element   id=login