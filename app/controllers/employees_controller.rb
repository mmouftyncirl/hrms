class EmployeesController < ApplicationController
  



  def index
    @employees = Employee.all
  end


  def show
#This is Employee controller 
#I have created my different pages    



#The following code create empoyee id 
@employee = Employee.find(params[:id])
    #@employee.annualleave = Annualleave.new
  end

#The following create new employee
  def new
  @employee  = Employee.new
  end

#The following code enable employee to edit their profile.
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
#this code shows the annual leaves
  def showannualleaves
	
  end
 
#the following code update the employee
 def update
  @employee  = Employee.find(params[:id])
 
  if @employee.update(employee_params)
    redirect_to @employee   else
    render 'edit'
  end
 end

#This code enables user to destroy the profiles

  def destroy
    

    @employee  = Employee.find(params[:id])
    @employee.destroy
 
    redirect_to employees_path
  end
#on the following code passing parameters.
 
 private
  def employee_params
    params.require(:employee ).permit(:title, :firstname,:surname,:dob,:address,:phonenumber,:emailid,:gender)
  end



end
