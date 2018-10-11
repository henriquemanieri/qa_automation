Dado(/^que eu abra o sistema Marketpay$/) do
  @login = LoginPage.new
  @login.load
end

Dado(/^logue como "([^"]*)"$/) do |user|
  @login.username_fill($default_data['username'][user])
  @login.password_fill($default_data['password'][user])
  @login.login_enter
end

Dado(/^que eu esteja na home do sistema$/) do
  @home = HomePage.new
  @home.home_page_confirmation

end

Quando(/^eu limpo a base$/) do
  HomePage.new.access_list_clients
  ClientsListPage.new.clean_base
end
