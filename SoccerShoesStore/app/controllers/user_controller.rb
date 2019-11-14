# frozen_string_literal: true

class UserController < ApplicationController
  # skip_before_filter :verify_authenticity_token
  def login
    @categories = Shoe.distinct.pluck(:category)
    # username = params[:]
  end
  def do_login
    salt = SecureRandom.base64(8)
    redirect_to product_index_path
  end
end
