Quando('acesso a página principal da Starbugs') do
    visit 'https://starbugs-qa.vercel.app/'
end

Então('eu devo ver uma lista de cafés disponíveis') do
  products = all('.coffee-item')   
  expect(products.size).to be > 0
end

Dado('que estou na página principal da Starbugs') do
    visit 'https://starbugs-qa.vercel.app/'
end

Dado('que desejo comprar o café {string}') do |product_name|
    @product_name = product_name
end

Dado('que esse produto custa R$ {float}') do |product_price|
    puts product_price
end

Dado('que o custo de entrega é de R$ {float}') do |delivery_price|
    puts delivery_price
end

Quando('inicio a compra desse item') do
    product = find('.coffee-item', text: @product_name)
    product.find('.buy-coffee').click
end

Então('devo ver a página do Checkout com os detalhes do produto') do
    product_title = find('.item-details h1')
    expect(product_title.text). to eql @product_name
end

Então('o valor total da compra deve ser de R$ {float}') do |float|
  pending # Write code here that turns the phrase above into concrete actions
end
