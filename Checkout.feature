#language: pt

Funcionalidade: Cadastro de finalização de compra
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

Contexto: 
Dado que estou na página de cadastro do checkout

Esquema do Cenário: Finalizar a compra com campos obrigatórios
  Quando eu preencer os campos "<Nome>, <Sobrenome>, <País>, <Endereço>, <Cidade>, <CEP>, <Telefone>, <Email>"
  E clicar no botão "Finalizar compra"
  Então devo ver a mensagem de confirmação "Pedido realizado com sucesso!"

Exemplos:
  | Nome     | Sobrenome | País      | Endereço          | Cidade     | CEP       | Telefone      | Email                  |
  | Raimundo   | Nonato     | Brasil    | Rua das araras, 123 | Cuiabá  | 78000-000 | +55 (65) 99292-0101 | raimundo@ebac.com |
  | Maria      | Silva      | Portugal  | Av. Lisboa, 456     | Lisboa | 1750-000 | +351 (21) 98888-7777 | maria@ebac.com |

Esquema do Cenário: Email inválido
  Quando eu preencher os campos "<Nome>, <Sobrenome>, <País>, <Endereço>, <Cidade>, <CEP>, <Telefone>, <Email>"
  E clicar no botão "Finalizar compra"
  Então devo ver a mensagem de erro "Email inválido. Insira um email válido."

Exemplos:
|Email |
|raimundo@ebac |
|maria@ebac |
|raimundoebac.com |
|ramundo@ebaccom |
|raimundo@.com |
|raimundo@eac.com |

Esquema do Cenário: Campos obrigatórios vazios
  Quando eu deixar de preencher os campos "<Nome>, <Sobrenome>, <País>, <Endereço>, <Cidade>, <CEP>, <Telefone>, <Email>"
  E clicar no botão "Finalizar compra"
  Então devo ver a mensagem de erro "Por favor, preencha todos os campos obrigatórios."

Exemplos:
|Nome | Sobrenome | País | Endereço | Cidade | CEP | Telefone | Email |