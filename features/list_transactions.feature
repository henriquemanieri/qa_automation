#encoding: utf-8
#language: pt


Funcionalidade:  Listar transaões
	Eu como administrador do sistema
	Quero logar no sistema Marketpay
	Para visualizar as transações realizadas

	Contexto: Acessar sistema
		Dado que eu abra o sistema Marketpay
		E logue como "administrador"
		Dado que eu esteja na home do sistema
		Quando eu limpo a base

	@list_transactions
  Cenario: Listar todas as transação
    Quando eu acessar a página de lista de transação
    E listar todos os clientes
    Entao devo vizualizar o cliente pesquisado e confirmar o cpf "usuario_ativo" do mesmo
