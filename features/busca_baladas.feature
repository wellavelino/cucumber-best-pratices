# language: pt
Funcionalidade: BuscaBaladas

  Para realizar uma busca o usuário deve ter um cadastro
  Para realizar uma busca o usuário deve estar logado
  A Busca pode ser feita por um ou mais filtros: nome, localização, estilo e preço
  Caso a busca não encontre nenhum resultado deve exibir um empty state para o usuário

  Contexto:
    Dado que estou logado com usuário válido
    E tocar no filtro de busca

  #cenário para ilustrar cenário em alto nível
  Cenário: Posso realizar uma busca de balada por um nome
    Dado que estou na tela de busca
    Quando selecionar a busca por nome
    E inserir um nome para a busca
    E tocar em filtrar
    Então devo visualizar o resultado da busca

  #cenário para ilustar o uso de esquema do cenário
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

  # cenário para ilustrar o uso de strings como parâmetros
  Cenário: Caso a busca não tenha resultados, devo visualizar uma mensagem.
    Dado que estou na tela de busca
    Quando selecionar a busca por nome
    E inserir um "nome inválido" para busca
    E tocar em filtrar
    Então devo visualizar a mensagem "nenhum resultado"

  # cenário para ilustrar o uso de data table
  Cenário: Posso visualizar a lista de filtros disponíveis
    Dado que estou na tela de busca
    Quando tocar no seletor de filtro
    Então devo visualizar a lista de filtros
      | nome        |
      | localização |
      | estilo      |
      | preço       |

  # cenário para ilustrar o uso de tags nos cenários
  @desenvolvimento
  Cenário: Posso visualizar a lista de filtros disponíveis
    Dado que estou na tela de busca
    Quando tocar no seletor de filtro
    Então devo visualizar a lista de filtros
      | nome        |
      | localização |
      | estilo      |
      | preço       |


 ## cenário para ilustrar o uso de comentários (má prática deixar o cenário comentado)

#Cenário: Posso visualizar a lista de filtros disponíveis
#      Dado que estou na tela de busca
#    Quando tocar no seletor de filtro
#    Então devo visualizar a lista de filtros
#    | nome		       |
#    |localização 	   |
#    | estilo		   |
#    | preço		   |


  #Exemplo ruim de se descrever um cenário
  Cenário: Pagamento de boleto banco XPTO


  #Exemplo bom de se descrever um cenário, aqui ele fala o que ele quer fazer e a saída esperada:
  Cenário: Posso realizar um pagamento de boleto para o banco XPTO, utilizando um boleto válido

  # Exemplo de um cenário descrito na forma imperativa
  Cenário: Posso adicionar uma nova balada no banco de dados
    Dado que estou na tela de cadastro de baladas
    Quando tocar em adicionar nova balada
    E inserir o nome
    E inserir a localidade
    E inserir o estilo
    E inserir o preço
    E tocar em concluir
    Então devo visualizar a notificação de "inclusão realizada com sucesso"

  # Exemplo de um cenário descrito na forma declarativa 
  Cenário: Posso adicionar uma nova balada no banco de dados
    Dado que estou na tela de cadastro de baladas
    Quando tocar em adicionar nova balada
    E inserir os dados da balada
    E tocar em concluir
    Então devo visualizar a notificação de "inclusão realizada com sucesso"



