# frozen_string_literal: true

class OrderController < ApplicationController
  def new
    cookies[:current_cart] = if cookies[:current_cart]
                               if !cookies[:current_cart].split(',').include?(params[:shoeid])
                                 cookies[:current_cart] + ',' + params[:shoeid]
                               else
                                 cookies[:current_cart]
                               end
                             else
                               params[:shoeid]
                             end
    redirect_to request.referer
  end

  def remove
    if cookies[:current_cart]
      @remove = cookies[:current_cart].split(',')
      @remove.delete(params[:shoeid])
      cookies[:current_cart] = @remove.join(',')
      cookies[:current_cart] = nil if @remove.empty?
    end
    redirect_to request.referer
  end

  def create
    @categories = Shoe.distinct.pluck(:category)
    @itemids = cookies[:current_cart].split(',') if cookies[:current_cart]
  end
end
