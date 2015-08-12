class EmployeesController < ApplicationController
  



  def index
    @employees = Employee.all
  end


  def show
    @employee = Employee.find(params[:id])
    #@employee.annualleave = Annualleave.new
  end


  def new
  @employee  = Employee.new
  end


  def edit
  @employee  = Employee.find(params[:id])
  end
 

  def create
	@employee  = Employee.new(employee_params)
 
  	if @employee.save
		redirect_to @employee 
	else
		render 'new'
	end
  end

  def showannualleaves
	
  end
 

 def update
  @employee  = Employee.find(params[:id])
 
  if @employee.update(employee_params)
    redirect_to @employee   else
    render 'edit'
  end
 end


  def destroy
    

    @employee  = Employee.find(params[:id])
    @employee.destroy
 
    redirect_to employee _path
  end

 
 private
  def employee_params
    params.require(:employee ).permit(:title, :firstname,:surname,:dob,:address,:phonenumber,:emailid,:gender)
  end



end
