Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#home'
 
 

  get "about"=>"pages#about",as: :about

  get "contact"=>"pages#contact",as: :contact


 
  devise_for :users
	#get 'annual_leaves', to: 'employees#showannualleaves'
	resources :employees do
		resources:annualleave
	end

end
