Rails.application.routes.draw do
  devise_for :admins
  root 'posts#index'
  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact
  get 'projects' => 'pages#projects', as: :projects 
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
