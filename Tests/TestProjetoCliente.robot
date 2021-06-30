***Settings***
Resource    ../Features/Resources/Resource.robot

Suite Setup     Abrir Navegador
Suite Teardown  Fechar Navegador

***Test Cases***
CT01 - Acessar Tela Login
    1 - Acessar Página de Login
    2 - Preencher Campos de Login
    3 - Realizar Login

CT02 - Acessar Tela Menu do Sistema
    1 - Validar Página do Sistema
    2 - Acionar Cadastrar Novo Cliente

CT03 - Acessar Tela Cadastro de Cliente
    1 - Validar Página de Cadastro de Cliente
    2 - Preencher Campos de Cadastro de Cliente
    3 - Cadastrar Cliente
    4 - Realizar Logout