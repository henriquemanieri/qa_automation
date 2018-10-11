#encoding: utf-8
#language: pt


Funcionalidade: Cadastro de clientes
	Eu como administrador do sistema
	Quero logar no sistema Marketpay
	Para cadastrar novos clientes

  Contexto: Acessar sistema
		Dado que eu abra o sistema Marketpay
		E logue como "administrador"
		Dado que eu esteja na home do sistema
		Quando eu limpo a base


	@client_register_active
  Cenario: Cadastrar cliente ativo
    Quando eu acessar a página de cadastro de cliente
    E cadastrar o cliente "usuario_ativo"
    Entao devo visualizar uma mensagem de sucesso que o cliente foi salvo

	@client_register_inactive_random
	Cenario: Cadastrar cliente inativo
		Quando eu acessar a página de cadastro de cliente
		E cadastrar um cliente inativo
		Entao devo visualizar uma mensagem de sucesso que o cliente foi salvo
