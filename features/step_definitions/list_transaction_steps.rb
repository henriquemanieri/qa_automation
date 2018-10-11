Quando(/^eu acessar a página de lista de transações$/) do
  HomePage.new.access_list_transactions
  @transactionList = TransactionListPage.new
  @transactionList.trasaction_list_page_confirmation
end

Quando(/^listar todos os clientes$/) do
  @transactionList.search_all_transactions
end
