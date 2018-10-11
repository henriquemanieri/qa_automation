#encoding: utf-8
#language: pt


Funcionalidade: Percorrer fluxo principal do sistema
	Eu como administrador do sistema
	Quero logar no sistema Marketpay
	Para cadastrar novos clientes

	Contexto: Acessar sistema
		Dado que eu abra o sistema Marketpay
		E logue como "administrador"
		Dado que eu esteja na home do sistema
		Quando eu limpo a base

	@regression
  Cenario: Regressao
    Quando eu acessar a pagina de cadastro de cliente
    E cadastrar o cliente "usuario_ativo"
    E devo visualizar uma mensagem de sucesso que o cliente foi salvo
    Quando eu acessar a pagina com a lista dos clientes
    E listar "usuario_ativo" já cadastrado
    E devo vizualizar o cliente pesquisado e confirmar o cpf "usuario_ativo" do mesmo
    Quando eu acessar a página de transações
    E realizar uma transação com um cliente com saldo
    E devo visualizar uma mensagem de sucesso que a transação foi feita
    Quando eu acessar a página de lista de transações
    E listar todos os clientes
    Entao devo vizualizar o cliente pesquisado e confirmar o cpf "usuario_ativo" do mesmo
