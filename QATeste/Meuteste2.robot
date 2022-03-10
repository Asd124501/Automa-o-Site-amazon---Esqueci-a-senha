*** Settings ***
Resource  MeuResource2.robot
Test Setup  Acessar a página
Test Teardown  Fechar navegador

*** Test Case ***
Caso 1: Procurando produto
  Procurar um produto com "Blusa Moletom Naruto"
  Clicando no produto "Blusa Moletom Naruto Frente/Costas Nuvem Akatsuki Aldeia Renegadas"
  Mudar o tamanho

*** Test Case ***
Caso 2: Mudando o tamanho de outro produto
  Procurar o produto novamente chamado "Tenis Masculino Esportivo Caminhada Leve"
  Clique no produto 
  Mude o tamanho
