Rails.application.routes.draw do
  post "user/save_first" => "user#save_first"
  post "user/save_second" => "user#save_second"
  post "user/save_third" => "user#save_third"
  post "user/save_fourth" => "user#save_fourth"

  get "login" => "user#login_form"
  post "login" => "user#login"
  post "logout" => "user#logout"

  post "user/:id/update" => "user#update"
  get "user/:id/edit" => "user#edit"
  post "user/create" => "user#create"
  get "signup" => "user#new"
  get "user/index" => "user#index"
  get "user/:id" => "user#show"

  get "/" => "home#top"
  get "about" => "home#about"
  get "howtoplay" => "home#howtoplay"

  get "game/index" => "game#index"
  get "game/first" => "game#first"
  get "game/second" => "game#second"
  get "game/third" => "game#third"
  get "game/fourth" => "game#fourth"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
