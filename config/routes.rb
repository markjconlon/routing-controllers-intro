Rails.application.routes.draw do

  get '/' => 'pages#welcome'
  get '/welcome' => 'pages#welcome'
  get '/about' => 'pages#about'
  get '/contest' => 'pages#contest'

  get '/kitten/:size' => 'pages#kitten'
  get '/kittens/:size' => 'pages#kittens'
end
