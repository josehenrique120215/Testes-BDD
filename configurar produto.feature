            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página do produto

            Esquema do Cenário: Seleção de cor, tamanho e quantidade do produto
            Quando seleciono a cor "<cor>"
            Exemplos:
            | cor    |
            | Blue   |
            | Orange |
            | Red    |
            E seleciono o tamanho "<tamanho>"
            Exemplos:
            | tamanho |
            | XS      |
            | S       |
            | M       |
            | L       |
            | XL      |
            E seleciono a quantidade "<quantidade>"
            Exemplos:
            | quantidade |
            | 1          |
            | 2          |
            | 3          |
            | 4          |
            | 5          |
            | 6          |
            | 7          |
            | 8          |
            | 9          |
            | 10         |
Então o produto deve ser configurado com a cor "<cor>", tamanho "<tamanho>" e quantidade "<quantidade>"

Cenário: Quantidade acima do permitido
Quando seleciono a quantidade "11"
Então deve ser exibida a mensagem "Quantidade máxima permitida é 10 unidades"

Cenário: Limpar as configurações do produto
Quando seleciono a cor "<cor>"
E seleciono o tamanho "<tamanho>"
E seleciono a quantidade "<quantidade>"
Quando clivo no botão "Limpar"
Então as configurações do produto devem ser limpas e os campos de cor, tamanho e quantidade devem estar vazios
