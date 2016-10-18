Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
  get 'registration' => 'users#new', as: :new_user
  post 'registration' => 'users#create', as: :create_user
end
