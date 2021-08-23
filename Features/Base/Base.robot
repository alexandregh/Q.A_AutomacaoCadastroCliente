***Settings***
Library     SeleniumLibrary

***Variables***
### OBJETOS ###
&{NAVEGADOR}        pagina=about:blank
         ...        navegador=chrome

### VARIÁVEIS ###
${linkHome}             https://estivalet.github.io/robot-static-testing-site/index.html
${textoInicialHome}     xpath=//*[contains(text(), "Log In - Cadastro de Clientes")]

${LinkQualquer}         http://www.abc.com.br
${textoQualquer}        xpath=//*[contains(text(), "Domínio não encontrado!")]

***Keywords***
Abrir Navegador
    Open Browser    ${NAVEGADOR.pagina}   ${NAVEGADOR.navegador}
    Maximize Browser Window

Fechar Navegador
    Sleep   3
    Close Browser

TempoExecução
    Sleep   1