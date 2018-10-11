class TransactionListPage < SitePrism::Page

  element :clientNameComboBx, :xpath, "//div/select/option[2]"
  element :searchButton, "[value='Pesquisar']"

  def trasaction_list_page_confirmation
    assert_text("Listar Transações")
  end

  def search_all_transactions
    searchButton.click
  end

  def confirm_transaction
    assert_text("Venda realizada com sucesso")
  end

end
