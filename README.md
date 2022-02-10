# Automação Cadastro de Cliente (Robot Framework)
### Projeto de Automação de Cadastro de Clientes com Robot Framework.
###### Descrição:
O exemplo simula a automação de cadastro de clientes na web com Robot Framework (ferramenta de automação de testes) onde todos os cenários possíveis como acesso a **página de login** (com todas as suas possíveis funcionalidades), acesso a **página do sistema** (com todas as suas possíveis funcionalidades) e acesso a **página de cadastro de clientes** (com todas as suas possíveis funcionalidades) são validados.
###### Padrão de Projeto *Designer Pattern*:
O Padrão de Projeto *Designer Pattern* utilizado na solução do projeto é o **Page Objects**. 
###### Organização do Projeto de Automação de Cadastro de Clientes:
O exemplo que simula a automação de cadastro de clientes na web com Robot Framework está disposto/organizado da seguinte maneira:

- **Features**
- - **Base**
- - - **Base.robot**
- - **PageObjects**
- - - **PO_CadastroCliente**
- - - - **PO_CadastroCliente.robot**
- - - **PO_Sistema**
- - - - **PO_Sistema.robot**
- - - **PO_Sistema**
- - - - **PO_Sistema.robot**
- - - **Salmo91_Copy.txt**
- - - **Salmo91.txt**
- - **Resources**
- - - **Messages.robot**
- - - **Resource.robot**
- - - **Services.robot**
- - - **Variables.robot**
- - - **Library.robot**
- - **Results**
- - - **log.html**    *(arquivo não incluso)*
- - - **output.xml**  *(arquivo não incluso)*
- - - **report.html** *(arquivo não incluso)*
- - - **selenium-screenshot-[n].png** *(arquivos não inclusos)*
- **Tests**
- - **TestsProjetoCliente.robot**

###### Observações:
*Arquivos chamados selenium-screenshot-[n].png que contém **[n]**. Esse n significa uma numeração como 1, 2, 3 e assim em diante. Portanto o exemplo **selenium-screenshot-[n].png** pode ser arquivos tais como **selenium-screenshot-1.png**, **selenium-screenshot-2.png** **selenium-screenshot-3.png**.*
