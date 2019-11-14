# frozen_string_literal: true

class UserController < ApplicationController
  # skip_before_filter :verify_authenticity_token
  def login
    @categories = Shoe.distinct.pluck(:category)
    # username = params[:]
  end

  def do_login
    len   = ActiveSupport::MessageEncryptor.key_len
    salt  = SecureRandom.hex len
    key   = ActiveSupport::KeyGenerator.new(Rails.application.secrets.secret_key_base).generate_key salt, len
    crypt = ActiveSupport::MessageEncryptor.new key
    encrypted_data = crypt.encrypt_and_sign params[:password]
    @password = "#{salt}$$#{encrypted_data}"
    @username = params[:email]
    User.create(username: @username, password: @password)
    redirect_to product_index_path
  end
end
