Quando(/^eu acessar a pagina de cadastro de cliente$/) do
  HomePage.new.access_include_client
end

Quando(/^cadastrar o cliente "([^"]*)"$/) do |client|
  @includeClient = IncludeClientPage.new
  @includeClient.cpf_fill($default_data['client_cpf'][client])
  @includeClient.register_client($default_data['client_name'][client])
end

Quando(/^cadastrar um cliente inativo$/) do
  @includeClient.register_client_inactive
end

Entao(/^devo visualizar uma mensagem de sucesso que o cliente foi salvo$/) do
  @includeClient.confirm_registration
end
