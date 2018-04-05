Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#homepage'
resources :items

get '/items', to: 'items#index'
get '/items/new', to: 'items#new'
post '/items', to: 'items#create'


#:id', to: 'items#show'
# get '/items/:id/edit', to: 'items#edit'
# post '/items', to: 'items#create'

end
