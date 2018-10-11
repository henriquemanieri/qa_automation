#encoding: utf-8
#language: pt


Funcionalidade: Realizar transações
	Eu como administrador do sistema
	Quero logar no sistema Marketpay
	Para fazer uma transação

	Contexto: Acessar sistema
		Dado que eu abra o sistema Marketpay
		E logue como "administrador"
		Dado que eu esteja na home do sistema
		Quando eu limpo a base

	@transaction_active_client
  Cenario: Realizar transação com cliente ativo e com saldo
    Quando eu acessar a página de transações
    E realizar uma transação com um cliente com saldo
    Entao devo visualizar uma mensagem de sucesso que a transação foi feita
