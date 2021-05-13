Dado('uma requisição GET para o serviço planeta') do
    @response_planeta = service.get_planets
    end
  
  Quando('o serviço planeta responder com status {int}') do |status_code|
    @count = @response_planeta.parsed_response["count"].to_i + 1
    #puts @count
    @response = service.get_planet(@count)
    expect(@response.code).to eq status_code
    end

  Então('retorna uma mensagem de alerta') do
    puts "Planeta: #{@response.parsed_response["detail"]}"
    expect(@response.parsed_response["detail"]).to eq("Not found")
  end