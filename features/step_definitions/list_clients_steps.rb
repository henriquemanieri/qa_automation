Quando(/^eu acessar a pagina com a lista dos clientes$/) do
  HomePage.new.access_list_clients
end

Quando(/^listar "([^"]*)" já cadastrado$/) do |client|
  @clientsList = ClientsListPage.new
  @clientsList.list_registered_client($default_data['client_name'][client])

end

Entao(/^devo vizualizar o cliente pesquisado e confirmar o cpf "([^"]*)" do mesmo$/) do |cpf|
  @clientsList = ClientsListPage.new
  @clientsList.confirm_cpf_client($default_data['client_cpf'][cpf])
end
