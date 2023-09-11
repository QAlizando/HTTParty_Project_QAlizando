class Assertions

    def request_success(status_code, message)
        expect(status_code).to eql (200)
        expect(message).to eql 'OK'
    end

    def check_created_employee(status, message, name, salary, age)
        expect(status).to eql 'success'
        expect(message).to eql 'Successfully! Record has been added.' 
        expect(name).to eql DATABASE[:name][:name6]
        expect(salary).to eql (DATABASE[:salary][:salary6])
        expect(age).to eql (DATABASE[:age][:age6])
    end

end