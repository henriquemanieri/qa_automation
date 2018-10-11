class IncludeTransactionPage < SitePrism::Page

  element :clientNameComboBx, :xpath, "//div/select/option[2]"
  element :transactionValueField, "[name='valorTransacao']"
  element :saveButton,  "#botaoSalvar"
  element :cancelButton, ".btn-danger"

  def trasaction_page_confirmation
    assert_text("Incluir Transacao")
  end

  def make_transaction
    clientNameComboBx.click
    transactionValueField.set(rand 100...10000)
    saveButton.click
  end

  def confirm_transaction
    assert_text("Venda realizada com sucesso")
  end

end
