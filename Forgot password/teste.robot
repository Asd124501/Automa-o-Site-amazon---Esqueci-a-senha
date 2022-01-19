*** Settings ***
Resource  testeresource.robot
Test Setup  Acessar a página
Test Teardown  Fechar navegador

*** Test Case *** 
Caso 1: Validar senha com um email não cadastrado
  Clicar no botão "Faça seu login"
  Clicar na área "Precisa de ajuda"
  Validar usando um email sem cadastro

Caso 2:Validar usando um telefone inválido
  Clique no botão Olá, faça seu login
  Clique em "precisa de ajuda"
  Validar usando um telefone não configurado

Caso 3: Validar a tela sem os dados
  Clique para fazer o login de novo
  Clique novamente em "precisa de ajuda"
  Validar os campos sem colocar nenhum dado

