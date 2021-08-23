*** Settings ***
Documentation    Nesta Suite de Teste são realizados os seguintes testes básicos:
    ...          1 - Acesso à Tela de Login;
    ...          2 - Acesso à Tela Principal (com validações do Login) do Sistema 
    ...          contendo o botão de Cadastro de Sistema;
    ...          3 - Acesso à Tela de Cadastro de Cliente, preenchimento de seus campos 
    ...          com suas reapectivas validações e envio do formulário.
Resource         ../Features/Resources/Resource.robot

Suite Setup      Abrir Navegador
Suite Teardown   Fechar Navegador

*** Test Cases ***
CT01 - Acessar Tela Login sem Sucesso
    Acessar Página de Login sem Sucesso

CT02 - Acessar Tela Login com Sucesso
    Acessar Página de Login com Sucesso

CT03 - Realizar Login sem Sucesso (Login Inválido)
    Preencher Campos de Login sem Sucesso (Login Inválido)
    #Realizar Login (Como o site não tem validação de Login/Senha não foi incluido a função "Realizar Login")

CT04 - Realizar Login sem Sucesso (Login Vazio)
    Preencher Campos de Login sem Sucesso (Login Vazio)
    #Realizar Login (Como o site não tem validação de Login/Senha não foi incluido a função "Realizar Login")

CT05 - Realizar Login sem Sucesso (Senha Inválida)
    Preencher Campos de Login sem Sucesso (Senha Inválida)
    #Realizar Login (Como o site não tem validação de Login/Senha não foi incluido a função "Realizar Login")

CT06 - Realizar Login sem Sucesso (Senha Vazia)
    Preencher Campos de Login sem Sucesso (Senha Vazia)
    #Realizar Login (Como o site não tem validação de Login/Senha não foi incluido a função "Realizar Login")

CT07 - Realizar Login sem Sucesso (Login / Senha Inválidos)
    Preencher Campos de Login sem Sucesso (Login / Senha Inválidos)
    #Realizar Login (Como o site não tem validação de Login/Senha não foi incluido a função "Realizar Login")

CT08 - Realizar Login com Sucesso
    Preencher Campos de Login com Sucesso
    Realizar Login

CT09 - Acessar Tela Menu do Sistema com Sucesso
    Validar Página do Sistema
    Acionar Cadastrar Novo Cliente

CT10 - Acessar Tela Cadastro de Cliente com Sucesso
    Validar Página de Cadastro de Cliente

CT11 - Realizar Cadastro de Cliente sem Sucesso (Nome Obrigatório)
    Cadastrar Cliente sem Sucesso (Nome Obrigatório)

CT12 - Realizar Cadastro de Cliente sem Sucesso (CPF Obrigatório)
    Cadastrar Cliente sem Sucesso (CPF Obrigatório)

CT13 - Realizar Cadastro de Cliente com Sucesso
    Preencher Campos de Cadastro de Cliente
    Cadastrar Cliente com Sucesso

CT14 - Sair do Sistema de Cadastro de Cliente
    Realizar Logout