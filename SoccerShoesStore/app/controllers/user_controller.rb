# frozen_string_literal: true

class UserController < ApplicationController
  def login
    @categories = Shoe.distinct.pluck(:category)
    # username = params[:]
  end

  def do_login
    salt = SecureRandom.base64(8)
  end
end
