# frozen_string_literal: true

Rails.application.routes.draw do
  get 'user/login', to: 'user#login'
  post 'user/do_login'
  post 'order/new'
  post 'order/remove'
  get '/product/search'
  get '/product/index'
  get '/product/:id', to: 'product#show', as: '/product/show'
  get '/product/category/:cat', to: 'product#category', as: '/product/category'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
