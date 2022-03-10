*** Settings ***
Library  SeleniumLibrary

*** Variable ***
${URL}  https://www.amazon.com.br/
${BROWSER}  chrome
${TEXTO_PESQUISA}  blusa moletom naruto
${TEXTO_PESQUISA2}  Tenis Masculino Esportivo Caminhada Leve
${INPUT_PESQUISA}  //input[@id="twotabsearchtextbox"]
${BTN_PESQUISA}  //input[@id="nav-search-submit-button" and @type='submit']
${NOME}  Blusa Moletom Naruto Frente/Costas Nuvem Akatsuki Aldeia Renegadas
${TAMANHO}  xpath=//select[@name='dropdown_selected_size_name']
${NUMERO}  xpath=//option[@data-a-id='size_name_2']
${PRODUTO}  xpath=//img[@alt='Blusa Moletom Naruto Frente/Costas Nuvem Akatsuki Aldeia Renegadas']
${PRODUTO2}  xpath=//img[@alt='Tenis Masculino Esportivo Caminhada Leve']
${COR}  xpath=//img[@alt="Branco"]

*** Keywords ***
Acessar a página
  Open Browser  url=${URL}  browser=${BROWSER}
  title should be  Amazon.com.br | Tudo pra você, de A a Z.
  

Procurar um produto com "${TEXTO_PESQUISA}"
  Set Selenium Speed  1.5
  Input Text  ${INPUT_PESQUISA}  ${TEXTO_PESQUISA} 
  Click Button  ${BTN_PESQUISA}

Clicando no produto "Blusa Moletom Naruto Frente/Costas Nuvem Akatsuki Aldeia Renegadas"
  Click Image  ${PRODUTO}
  
Mudar o tamanho  
  Click Element  ${TAMANHO}
  Click Element  ${NUMERO}

Fechar navegador
  Close Browser 

Procurar o produto novamente chamado "${TEXTO_PESQUISA2}"
  Set Selenium Speed  1.5
  Input Text  ${INPUT_PESQUISA}  ${TEXTO_PESQUISA2} 
  Click Button  ${BTN_PESQUISA}

Clique no produto 
  Click Image  ${PRODUTO2}

Mude o tamanho  
  Click Element  ${TAMANHO}
  Click Element  ${NUMERO}
