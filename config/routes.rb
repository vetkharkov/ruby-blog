Rails.application.routes.draw do
	root 'posts#index', as: 'home'
	resources :posts
	resources :pictures, only: [:create, :destroy]
end
