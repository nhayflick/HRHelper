class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
    @employee.build_employee_profile
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      redirect_to @employee
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update_attributes(params[:employee])
    if @employee.save
      redirect_to @employee
    else
      render :edit
    end
  end

  def show
    @employee = Employee.find(params[:id])
    @employee_profile = @employee.employee_profile
  end
end
