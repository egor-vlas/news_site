Rails.application.routes.draw do
	root 'index#home'
	resources :articles
end
