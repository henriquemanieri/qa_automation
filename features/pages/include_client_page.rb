class IncludeClientPage < SitePrism::Page

  element :nameField, "[name='nome']"
  element :cpfField, "[name='cpf']"
  element :statusCbBoxActive,  "#status [value='true']"
  element :statusCbBoxInactive,  "#status [value='false']"
  element :balanceField, "[name='saldoCliente']"
  element :saveButton, "#botaoSalvar"
  element :cleanButton, "#botaoLimpar"
  element :cancelButton, ".btn-danger"

  def client_page_confirmation
    assert_text("Incluir Cliente")
  end

  def register_client(client)
    nameField.set(client)
    statusCbBoxActive.click
    balanceField.set(rand 10000...15000)
    saveButton.click
  end

  def cpf_fill(cpf)
    cpfField.set(cpf)
  end


  def register_client_active
    name_generator
    cpf_generator
    nameField.set(Faker::Friends.character)
    cpfField.set(Faker::CPF.numeric)
    statusCbBoxActive.click
    balanceField.set(rand 10000...15000)
    saveButton.click
  end

  def register_client_inactive
    name_generator
    cpf_generator
    nameField.set(Faker::Friends.character)
    cpfField.set(Faker::CPF.numeric)
    statusCbBoxInactive.click
    balanceField.set(rand 10000...15000)
    saveButton.click
  end


  def confirm_registration
    assert_text("Cliente salvo com sucesso")
  end

end
