#encoding: utf-8
#language: pt


Funcionalidade:  Listar clientes
	Eu como administrador do sistema
	Quero logar no sistema Marketpay
	Para visualizar os clientes criados

	Contexto: Acessar sistema
		Dado que eu abra o sistema Marketpay
		E logue como "administrador"
		Dado que eu esteja na home do sistema
		Quando eu limpo a base

	@list_active_client
  Cenario: Listar cliente ativo
    Quando eu acessar a pagina com a lista dos clientes
    E listar "usuario_ativo" já cadastrado
    Entao devo vizualizar o cliente pesquisado e confirmar o cpf "usuario_ativo" do mesmo
