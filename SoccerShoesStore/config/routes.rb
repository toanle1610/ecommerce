# frozen_string_literal: true

Rails.application.routes.draw do
  post 'order/new'
  get '/product/index'
  get '/product/:id', to: 'product#show', as: '/product/show'
  get '/product/category/:cat', to: 'product#category'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
