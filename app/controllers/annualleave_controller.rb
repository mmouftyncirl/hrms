class AnnualleaveController < ApplicationController

	def index
		@employee = Employee.find(params[:employee_id])
		#@annualleave = Annualleave.new
		
	end

	def new
		@employee = Employee.find(params[:employee_id])
		#@annualleave = Annualleave.new
	end

	def create
		@annualleave = Annualleave.new(leave_params)
		
		if @annualleave.save
			render template: "annualleave/show"
	end
end


private
  def leave_params
    params.require(:annualleave).permit(:startdate, :enddate,:leavecomment, :employee_id)
  end

end
