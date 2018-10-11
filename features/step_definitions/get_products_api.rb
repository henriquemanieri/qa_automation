
Dado(/^que eu faça a requisição de leitura dos produtos$/) do
  begin
    @response = Products.new.get_products
    puts @response.body
  end
end


Entao(/^valido o codigo de resposta esperado$/) do
  expect(@response.code).to eq 200
  puts "Validado o recebimento de resposta 200"
end
