*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${URL}  https://www.amazon.com.br/
${BROWSER}  chrome
${LOGIN}   xpath=//a[@id="nav-link-accountList"]
${SENHA}  xpath=//a[@id="auth-fpp-link-bottom"]
${AJUDA}  xpath=//span[@class="a-expander-prompt"]
${CAMPO_EMAIL}  xpath=//input[@id="ap_email"  and  @type='email']
${TEXTO}  matheus.blabla@hotmail.com
${BOTAO_CONTINUE}  xpath=//input[@id="continue"  and  @type='submit']
${INVALIDO}  14999999999
${LOGIN2}   xpath=//a[@id="nav-link-accountList"]
${SENHA2}  xpath=//a[@id="auth-fpp-link-bottom"]
${AJUDA2}  xpath=//span[@class="a-expander-prompt"]
${CAMPO_EMAIL2}  xpath=//input[@id="ap_email"  and  @type='email']
${BOTAO_CONTINUE2}  xpath=//input[@id="continue"  and  @type='submit']
${VOLTAR}  xpath=//a[@class="a-link-nav-icon"]
${VOLTAR2}  xpath=//a[@class="a-link-nav-icon"]
${LOGIN3}   xpath=//a[@id="nav-link-accountList"]
${SENHA3}  xpath=//a[@id="auth-fpp-link-bottom"]
${AJUDA3}  xpath=//span[@class="a-expander-prompt"]
${CAMPO_EMAIl3}  xpath=//input[@id="ap_email"  and  @type='email']
${BOTAO_CONTINUE3}  xpath=//input[@id="continue"  and  @type='submit']
${VOLTAR3}  xpath=//a[@class="a-link-nav-icon"]


*** Keywords ***
Acessar a página
  Open Browser  url=${URL}  browser=${BROWSER}
  title should be  Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais.

Clicar no botão "Faça seu login"
  Set Selenium Speed  1.5
  Click Element  ${LOGIN}

Clicar na área "Precisa de ajuda"
  Click Element  ${AJUDA}
  Wait Until Element is Enabled  ${SENHA}
  Click Element  ${SENHA}

Validar usando um email sem cadastro
  Input Text  ${CAMPO_EMAIL}  ${TEXTO}
  Click Button  ${BOTAO_CONTINUE}
  Wait Until Element is Enabled  ${VOLTAR}
  Click Element  ${VOLTAR}

Clique no botão Olá, faça seu login
  Set Selenium Speed  1.5
  Click Element  ${LOGIN2}

Clique em "precisa de ajuda"
  Click Element  ${AJUDA2}
  Wait Until Element is Enabled  ${SENHA2}
  Click Element  ${SENHA2}


Validar usando um telefone não configurado
  Input Text  ${CAMPO_EMAIL2}  ${INVALIDO}
  Click Button  ${BOTAO_CONTINUE2}
  Wait Until Element is Enabled  ${VOLTAR}
  Click Element  ${VOLTAR}

Clique para fazer o login de novo
  Set Selenium Speed  1.5
  Click Element  ${LOGIN3}

Clique novamente em "precisa de ajuda"
  Click Element  ${AJUDA3}
  Wait Until Element is Enabled  ${SENHA3}
  Click Element  ${SENHA3}

Validar os campos sem colocar nenhum dado  
  Click Button  ${BOTAO_CONTINUE3}
  Wait Until Element is Enabled  ${VOLTAR3}
  Click Element  ${VOLTAR3}

Fechar navegador
  Close Browser


 
  
