***Settings***
Resource                ../../Resources/Resource.robot

***Keywords***
Validar Página do Sistema
    Get Text            ${textoInicialSistema}

Acionar Cadastrar Novo Cliente
    Sleep               2
    Click Element       id=btn-cadastro-cliente