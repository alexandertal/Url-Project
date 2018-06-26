Rails.application.routes.draw do
  root 'urls#new'
  get '/urls' => 'urls#index'
  get '/:id' => 'urls#show'
  resources :urls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
