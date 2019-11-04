# frozen_string_literal: true

class Shoe < ApplicationRecord
  # attr_accessible :name, :price, :color, :status, :size, :category, :image
  mount_uploader :image, ImageUploader
end
