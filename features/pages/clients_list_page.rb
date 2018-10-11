class ClientsListPage < SitePrism::Page

  element :searchButton, "[value='Pesquisar']"
  element :cleanButton, "[value='Limpar Base']"
  element :nameField,  "[name='j_idt17']"
  element :dateField, "[name='calendario_input']"


  def list_all_clients
    searchButton.click
  end

  def list_registered_client(client_name)
    nameField.set(client_name)
    searchButton.click
  end

  def confirm_cpf_client(client_cpf)
    assert_text("#{client_cpf}")
  end

  def password_fill(password)
    passwordField.set(password)
  end

  def login_enter
    loginButton.click
  end

  def clean_base
    cleanButton.click
    assert_text("Base Limpa com sucesso")
  end

end
