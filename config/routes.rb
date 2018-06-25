Rails.application.routes.draw do
  resources :urls
  root 'urls#new'
  get 'urls/new'
  get '/:id' => 'urls#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
