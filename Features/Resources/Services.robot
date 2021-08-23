*** Settings ***
Resource         ../Resources/Resource.robot

*** Keywords ***
Realizar Pesquisa Por CEP Aguardando a Rua "${rua}"
    Click Element                   xpath=//button[contains(text(),'Pesquisar')]
    ${ruaEsperada}=                 Get Element Attribute           id=rua        value
    Should Be Equal As Strings      ${ruaEsperada}         ${rua}