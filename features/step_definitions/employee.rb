Dado('que o usuario consulte informacoes de funcionario') do
  @getlist = Employee_Requests.new
end
  
  Quando('ele realizar a pesquisa') do
    @list_employee = @getlist.find_employee
  end
  
  Entao('uma lista de funcionarios deve retornar') do
    expect(@list_employee.code).to eql 404
    expect(@list_employee.message).to eql 'OK'
  end

Dado('que o usuario cadastre um novo funcionario') do
  #  @create = Employee_Requests.new
  #  @assert = Assertions.new
end
  
  Quando('ele enviar as informacoes do funcionario') do
    @create_employee = employee.create_employee(DATABASE[:name][:name6], DATABASE[:salary][:salary6], DATABASE[:age][:age6])
    puts @create_employee
  end
  
 Entao('esse funcionario sera cadastrado') do
    assert.request_success(@create_employee.code, @create_employee.message)
    assert.check_created_employee(@create_employee["status"], @create_employee["message"], @create_employee['data']["employee_name"], 
      @create_employee['data']["employee_salary"], @create_employee['data']["employee_age"])
  end

Dado('que o usuario altere uma informacao de funcionario') do
  @request = Employee_Requests.new
end
    
  Quando('ele enviar as novas informacoes') do
    @update_employee = @request.update_employee(@request.find_employee['data'][0]['id'].to_s, 'Alberto', 100, 40)
    puts @update_employee
  end
    
  Entao('as informacoes serao alteradas') do
    expect(@update_employee.code).to eql (200)
    expect(@update_employee.msg).to eql 'OK'
    expect(@update_employee["status"]).to eql 'success'
    expect(@update_employee["message"]).to eql 'Successfully! Record has been updated.' 
    expect(@update_employee['data']["employee_name"]).to eql 'Alberto'
    expect(@update_employee['data']["employee_salary"]).to eql (100)
    expect(@update_employee['data']["employee_age"]).to eql (40)
  end

Dado('que o usuario queira deletar um funcionario') do
  @request = Employee_Requests.new
end
      
  Quando('ele enviar a identificacao unica') do
    @delete_employee = @request.delete_employee(@request.find_employee['data'][0]['id'])
  end
      
  Entao('esse funcionario sera deletado do sistema') do
    expect(@delete_employee.code).to eql (200)
    expect(@delete_employee.msg).to eql 'OK'
    expect(@delete_employee["status"]).to eql 'success'
    expect(@delete_employee["data"]).to eql '1'
    expect(@delete_employee["message"]).to eql 'Successfully! Record has been deleted' 
  end

