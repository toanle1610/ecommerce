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

  def category
    @categories = Shoe.distinct.pluck(:category)
    @products = Shoe.where(category: params[:cat])
  end

  def search
    @categories = Shoe.distinct.pluck(:category)
    @searchcategory = params[:category]
    if @searchcategory == 'None'
      @products = Shoe.where('name like ?', "%#{params[:q]}%")
    else
      @products = Shoe.where('name like ? And category = ?',
                             "%#{params[:q]}%", @searchcategory.to_s)
    end
  end
end
