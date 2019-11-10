# frozen_string_literal: true

class ProductController < ApplicationController
  def index
    @products = Shoe.all
    @categories = Shoe.distinct.pluck(:category)
  end

  def show
    @categories = Shoe.distinct.pluck(:category)
    @product = Shoe.find(params[:id])
  end
end
