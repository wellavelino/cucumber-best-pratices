# language: pt
Funcionalidade: BuscaBaladas

  Para realizar uma busca o usuário deve ter um cadastro
  Para realizar uma busca o usuário deve estar logado
  A Busca pode ser feita por um ou mais filtros: nome, localização, estilo e preço
  Caso a busca não encontre nenhum resultado deve exibir um empty state para o usuário

  Contexto:
    Dado que estou logado com usuário válido
    E tocar no filtro de busca

  Cenário: Posso realizar uma busca de balada por um nome
    Dado que estou na tela de busca
    Quando selecionar a busca por nome
    E inserir um nome para a busca
    E tocar em filtrar
    Então devo visualizar o resultado da busca

  @tags
  Esquema do Cenário: Posso realizar uma  busca por nome, localização, estilo e preço.
    Dado que estou na tela de busca
    Quando selecionar busca por "<FILTRO>"
    E inserir um "<DADO>" para a busca
    E tocar em filtrar
    Então devo visualizar o resultado da busca

    Exemplos:
      | FILTRO      | DADO   |
      | nome        | PDD    |
      | localização | Centro |
      | estilo      | Rock   |
      | preço       | R$ 20  |

  Cenário: Caso a busca não tenha resultados, devo visualizar uma mensagem.
    Dado que estou na tela de busca
    Quando selecionar a busca por nome
    E inserir um "nome inválido" para busca
    E tocar em filtrar
    Então devo visualizar a mensagem "nenhum resultado"

  Cenário: Posso visualizar a lista de filtros disponíveis
    Dado que estou na tela de busca
    Quando tocar no seletor de filtro
    Então devo visualizar a lista de filtros
      | nome        |
      | localização |
      | estilo      |
      | preço       |
    
  @desenvolvimento
  Cenário: Posso visualizar a lista de filtros disponíveis
    Dado que estou na tela de busca
    Quando tocar no seletor de filtro
    Então devo visualizar a lista de filtros
      | nome        |
      | localização |
      | estilo      |
      | preço       |

 #Cenário aguardando validação
#Cenário: Posso visualizar a lista de filtros disponíveis
#      Dado que estou na tela de busca
#    Quando tocar no seletor de filtro
#    Então devo visualizar a lista de filtros
#    | nome		       |
#    |localização 	   |
#    | estilo		   |
#    | preço		   |
