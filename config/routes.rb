Rails.application.routes.draw do
  root to: 'books#index'
  get '/books/:id', to: 'books#show', as: 'book'
  post '/books/', to: 'books#create'
  get '/new', to: 'books#new', as: 'new_book'
  get '/books/:id/edit', to: 'books#edit', as: 'edit_book'
  put '/books/:id', to: 'books#update'
  patch '/books/:id', to: 'books#update'
  get '/books/:id/delete', to: 'books#delete'
end
