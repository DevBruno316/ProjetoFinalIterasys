Feature: Consultar Produto

    Scenario: Selecionar produto "Luxuosas Astromélias Coloridas no Vaso"
        Given que acesso o site Giuliana Flores
        When clico na barra de pesquisa e preencho com Luxuosas Astromélias Coloridas no Vaso
        Then fecho aba CEP e sou direcionado para pagina de produtos
        Then checo se o nome do produto é Luxuosas Astromélias Coloridas no Vaso e o preço é R$ 229,90
        Then clico no produto Luxuosas Astromélias Coloridas no Vaso
        Then sou direcionado para pagina de carrinho e checo titulo Luxuosas Astromélias Coloridas no Vaso e valor R$ 229,90
        

    Scenario: Selecionar produto "Orquídea Dendrobium Branca"
        Given que acesso o site Giuliana Flores
        When clico na barra de pesquisa e preencho com Orquídea Dendrobium Branca
        Then fecho aba CEP e sou direcionado para pagina de produtos
        Then checo se o nome do produto é Orquídea Dendrobium Branca e o preço é R$ 79,90
        Then clico no produto Orquídea Dendrobium Branca
        Then sou direcionado para pagina de carrinho e checo titulo Orquídea Dendrobium Branca e valor R$ 79,90 





    
    