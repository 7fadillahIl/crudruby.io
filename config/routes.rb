Rails.application.routes.draw do
  get 'postingan/index'
  get '/index' => 'home#index'
  get '/postingan' => 'postingan#index'
  get '/artikel' => 'home#artikel'
  get '/about' => 'home#about'
  get '/' => 'home#index'
  get '/postingan/detail/:id'=> 'postingan#detail'
  get '/postingan/input' => 'postingan#input'
  post '/postingan/create' => 'postingan#create'
  get '/postingan/edit/:id' => 'postingan#edit'
  post '/postingan/update/:id' => 'postingan#update'
  get '/postingan/delete/:id' => 'postingan#delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  get "/home", to: "home#idex"
  root "home#index"
end
