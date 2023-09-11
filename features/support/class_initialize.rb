module Request
  
  def assert
    @assert ||= Assertions.new
  end

  def employee
    @employee ||= Employee_Requests.new
  end

end
