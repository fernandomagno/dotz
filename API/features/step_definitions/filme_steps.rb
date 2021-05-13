Dado('uma requisição GET para o serviço filme') do
    @response_filme = service.get_filme
  end
  
  Quando('o serviço filme responder com status {int}') do |status_code|
    expect(@response_filme.code).to eq status_code
    puts "Title1: #{@title1 = @response_filme.parsed_response["results"][0]["title"]}"
    puts "Title2: #{@title2 = @response_filme.parsed_response["results"][1]["title"]}"
    puts "Title3: #{@title3 = @response_filme.parsed_response["results"][2]["title"]}"
    puts "Title4: #{@title4 = @response_filme.parsed_response["results"][3]["title"]}"
    puts "Title5: #{@title5 = @response_filme.parsed_response["results"][4]["title"]}"
    puts "Title6: #{@title6 = @response_filme.parsed_response["results"][5]["title"]}"
  end
  
  Então('retorna uma lista de filmes') do
    expect(@response_filme.message).not_to be_empty
    expect(@response_filme.code).to eq(200) 
    expect(@title1).to eq("A New Hope")
    expect(@title2).to eq("The Empire Strikes Back")
    expect(@title3).to eq("Return of the Jedi")
    expect(@title4).to eq("The Phantom Menace")
    expect(@title5).to eq("Attack of the Clones")
    expect(@title6).to eq("Revenge of the Sith")
  end

  