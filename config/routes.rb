Rails.application.routes.draw do

  get 'likes/create'
  get 'likes/destroy'
 # ↓indexのルーティング  
  get "/" => "index#hello"
 # ↓tweetのルーティング
  get   "tweets/index"       => "tweets#index"
  get   "tweets/show/:id"    => "tweets#show"
  post  "tweets/index"       => "tweets#edit"
  get   "tweets/new"         => "tweets/new"
  post  "tweets"             => "tweets#create"
  get   "tweets/edit/:id"    => "tweets#edit"
  get   "tweets/destroy/:id" => "tweets#destroy"
  patch "tweets/edit/:id"    => "tweets#update"
 # ↓deviseのルーティング
  devise_for :users
 #↓likesのルーティング
 post "likes/create/:id"  => "likes#create"
 post "likes/destroy/:id"  => "likes#destroy"

end
