Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/doctors', to: 'doctors#index'
  # get '/doctors/:id', to: 'doctors#show'
  # get '/hospitals', to: 'hospitals#index'
end
