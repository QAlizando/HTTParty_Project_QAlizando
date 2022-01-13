Dado('que o usuario consulte informacoes de funcionario') do
  @get_url = 'http://dummy.restapiexample.com/api/v1/employees'
end
  
  Quando('ele realizar a pesquisa') do
    @list_employee = HTTParty.get(@get_url)
  end
  
  Entao('uma lista de funcionarios deve retornar') do
    expect(@list_employee.code).to eql 200
    expect(@list_employee.message).to eql 'OK'
  end

  Dado('que o usuario cadastre um novo funcionario') do
    @post_url = 'http://dummy.restapiexample.com/api/v1/create'
  end
  
    Quando('ele enviar as informacoes do funcionario') do
      @create_employee = HTTParty.post(@post_url, body: {
        "employee_name": "Tony",
        "employee_salary": 420800,
        "employee_age": 30,
        "profile_image": ""
      }.to_json)
    end
  
    Entao('esse funcionario sera cadastrado') do
      puts @create_employee
      puts @create_employee.code
      puts @create_employee.msg
      puts @create_employee["status"]
      puts @create_employee["message"]
      puts @create_employee['data']["employee_salary"]
      # puts @create_employee.parsed_response["data"]["employee_salary"]
      # puts @create_employee.parsed_response["data"]["employee_age"]
    end
