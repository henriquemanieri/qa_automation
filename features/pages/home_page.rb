class HomePage < SitePrism::Page

  element :homeMenuButton, "[title='Inicio']"
  element :qaMenuButton, "[title='QA']"
  element :clientMenuButton, "[title='Clientes']"
  element :addClientButton, "[href='/desafioqa/incluirCliente'] .menu-item-parent"
  element :listClientButton, "[href='/desafioqa/listarCliente'] .menu-item-parent"
  element :transactionMenuButton, "[title='Transações']"
  element :addTransactionButton, "[href='/desafioqa/incluirVenda'] .menu-item-parent"
  element :listTransactionButton, "[href='/desafioqa/listarVenda'] .menu-item-parent"
  element :exitButton, "[value='SAIR']"


  def home_page_confirmation
    assert_text("Bem vindo ao Desafio")
  end

  def access_include_client
    qaMenuButton.click
    clientMenuButton.click
    addClientButton.click
  end

  def access_include_transaction
    qaMenuButton.click
    transactionMenuButton.click
    addTransactionButton.click
  end

  def access_list_clients
    qaMenuButton.click
    clientMenuButton.click
    listClientButton.click
    assert_text("Listar Clientes")
  end

  def access_list_transactions
    qaMenuButton.click
    transactionMenuButton.click
    listTransactionButton.click
  end

end
