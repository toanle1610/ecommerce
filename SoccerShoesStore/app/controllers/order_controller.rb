# frozen_string_literal: true

class OrderController < ApplicationController
  def new
    session[:current_cart] = if session[:current_cart]
                               session[:current_cart] + ',' + params[:shoeid]
                             else
                               params[:shoeid]
                             end
    redirect_to request.referer
  end

  def remove
    if session[:current_cart]
      @remove = session[:current_cart].split(',')
      @remove.delete(params[:shoeid])
      session[:current_cart] = @remove.join(',')
      session[:current_cart] = nil if @remove.empty?
    end
    redirect_to request.referer
  end

  def create
    @categories = Shoe.distinct.pluck(:category)
  end
end
