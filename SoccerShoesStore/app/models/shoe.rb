# frozen_string_literal: true

class Shoe < ApplicationRecord
  # attr_accessible :name, :price, :color, :status, :size, :category, :image
  has_one_attached :image
end
