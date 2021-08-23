*** Variables ***
### OBJETOS ###
&{USER}        usuarioname=alexandre
    ...        password=123456
    ...        fakeusuarioname=abc
    ...        fakepassword=9876543210123456789
    ...        usuarionamevazio=${EMPTY}
    ...        passwordvazio=${EMPTY}

&{CLIENTE}     nome=Alexandre Rodrigues da Silva
    ...        CPF=03476000850
    ...        dataNascimento=15051947
    ...        sexo=${EMPTY}
    ...        telefone=99999999999
    ...        email=alexandre@alexandre.com
    ...        CEP=21852580
    ...        numero=9
    ...        estadoCivil=${EMPTY}
    ...        interesses=${EMPTY}

### VARIÁVEIS ###
${textoInicialCadastroCliente}      xpath=//*[contains(text(), "Cadastro de Cliente")]
${rua}                              Rua Congo

${textoInicialSistema}              xpath=//*[contains(text(), "Bem vindo ao Sistema de Cadastro de Clientes")]