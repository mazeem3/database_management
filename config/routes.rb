Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'books#index'
    get 'books/new' => 'books#new', as: :new_book
    get 'books/:id' => 'books#show', as: :book
    get 'books/:id/edit' => 'books#edit', as: :edit_book
    patch 'books/:id' => 'books#update'
    post 'books' => 'books#create'
    delete 'books/:id' => 'books#delete'

    get 'publishers/new' => 'publisher#new', as: :new_publisher
    get 'publishers/:id' => 'publisher#show', as: :publisher
    get 'publishers/:id/edit' => 'publisher#edit', as: :edit_publisher
    post 'publishers' => 'publisher#create'
    delete 'publishers/:id' => 'publisher#delete'

    get 'registration' => 'users#new', as: :new_user
    post 'registration' => 'users#create', as: :create_user

    get 'employee/registration' => 'employees#new', as: :new_employee
    post 'employee/registration' => 'employees#create', as: :create_employee
    get 'employee' => 'employees#show'

    get 'sign_in' => 'sessions#new', as: :sign_in
    post 'sign_in' => 'sessions#create'
    delete 'sign_in' => 'sessions#delete'

    get 'api/books' => 'api/books#index', as: :api_books
    get 'api/books/:id' => 'api/books#show', as: :api_book
    post 'api/books/checkout/:id' => 'api/books#check_out', as: :checkout_book
    delete 'api/books/checkout/:id' => 'api/books#check_in', as: :checkin_book
end
