require 'subdomain'

Rails.application.routes.draw do

  resources :stores
  resources :customers

  match '/' => 'shopping#front', :constraints => { :subdomain => /.+/ }, via: [:get, :post, :put, :patch, :delete]

end
