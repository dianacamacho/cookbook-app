Rails.application.routes.draw do

  get '/' => 'recipes#meal'
  get '/all' => 'recipes#every_meal'

  get '/recipes' => 'recipes#index'
  get 'recipes/:id' => 'recipes#show'
  

  

 end