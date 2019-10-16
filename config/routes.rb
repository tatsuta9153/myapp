Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
get "tweets/index" => "tweets#index"
get "tweets/show/:id" => "tweets#show"
post "tweets/index" => "tweets#edit"
get "/" => "index#hello"
get "hello/:username" => "index#hello"
get "tweets/new" => "tweets/new"
post "tweets"  => "tweets#create"
get "tweets/edit/:id" => "tweets#edit"
get "tweets/destroy/:id" => "tweets#destroy"
patch "tweets/edit/:id" => "tweets#update"

end
