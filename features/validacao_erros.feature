#language: pt
#utf-8

Funcionalidade: Validar Campos
    Eu como usuario
    Quero enviar um formulario de contato sem todos os campos preenchidos
    Para validar as mensagens de erro

Esquema do Cenario: Validar mensagens de erro
    Dado que acesse a pagina de contato da Livelo
    Quando preencher os campos "<nome>" "<email>" "<cpf>" "<mensagem>" "<assunto>"
    Entao uma mensagem de erro deve ser exibida

Exemplos:
    |  nome     |   email       |   cpf     |      mensagem     | assunto |
    |           |teste@teste.com|71882367049|test campo mensagem| 231042  |
    | Test Nome |               |71882367049|test campo mensagem| 231042  |
    | Test Nome |teste@teste.com|           |test campo mensagem| 231042  |
    | Test Nome |teste@teste.com|71882367049|                   | 231042  |
    | Test Nome |teste@teste.com|71882367049|test campo mensagem|         |