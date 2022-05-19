Dado('abrir a calculadora') do
  find_by_id(calculator.btn_ok).click
end

Quando('efetuar a {string} de {int} e {int}') do |op, num1, num2|
  calculator.type_number(num1)
  case op
  when 'soma'
    find_by_id(calculator.btn_plus).click
  when 'subtração'
    find_by_id(calculator.btn_minus).click
  when 'multiplicação'
    find_by_id(calculator.btn_times).click
  when 'divisão'
    find_by_id(calculator.btn_divide).click
  else puts 'Operação inválida'
  end
  calculator.type_number(num2)
  find_by_id(calculator.btn_equal).click
end

Então('o resultado {string} deve ser exibido') do |result|
  expect(calculator.get_display_text).to eq(result)
end
