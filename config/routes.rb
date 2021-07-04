Rails.application.routes.draw do
	root 'articles#index'
	
	resources :articles do 
		resources :comments
	end

	get 'signup', to: 'users#new'
	resources :users, except: [:new]
end
