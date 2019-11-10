# frozen_string_literal: true

class ProductController < ApplicationController
  def index
    @products = Shoe.all
  end

  def show
    @product = Shoe.find(params[:id])
  end
end
