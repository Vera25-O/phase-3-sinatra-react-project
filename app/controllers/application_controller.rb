class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/employees" do
    employees = Employee.all.order(:created_at)
    employees.to_json
  end

  post "/employees" do
    employee = Employee.create(salary: params[:salary], username: params[:username])
    employee.to_json
  end

  patch "/employees/:id" do
    employee = Employee.find(params[:id])
    employee.update(body: params[:body])
    employee.to_json
  end

  delete "/employees/:id" do
    employee = Employee.find(params[:id])
    employee.destroy
    employee.to_json
  end

end
