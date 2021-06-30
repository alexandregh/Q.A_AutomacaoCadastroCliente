***Settings***
Resource        ../../Base/Base.robot

***Variables***
### VARIÁVEIS ###
${textoInicialSistema}      xpath=//*[contains(text(), "Bem vindo ao Sistema de Cadastro de Clientes")]

***Keywords***
1 - Validar Página do Sistema
    Get Text    ${textoInicialSistema}

2 - Acionar Cadastrar Novo Cliente
    Sleep               2
    Click Element       id=btn-cadastro-cliente