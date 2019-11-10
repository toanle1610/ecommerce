# frozen_string_literal: true

Rails.application.routes.draw do
  get 'order/new'
  get '/product/index'
  get '/product/:id', to: 'product#show', as: '/product/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
