# frozen_string_literal: true

class UserController < ApplicationController
  # skip_before_filter :verify_authenticity_token
  def login
    @categories = Shoe.distinct.pluck(:category)
    # username = params[:]
  end

  def do_login
    @password = encrypt(params[:password])
    @username = params[:email]
    user = User.where(username: @username).first
    if params[:commit] == 'Sign Up'
      if user.nil?
        User.create(username: @username, password: @password)
      else
        flash[:fail] = 'User Name has already existed'
        return redirect_to user_login_path
      end
    elsif user.nil? || params[:password] != decrypt(user.password)
      flash[:fail] = 'User Name Or Password is not correct'
      return redirect_to user_login_path
    else
      session[:userid] = user.id
    end

    redirect_to product_index_path
  end

  def encrypt(text)
    text = text.to_s unless text.is_a? String

    len   = ActiveSupport::MessageEncryptor.key_len
    salt  = SecureRandom.hex len
    key   = ActiveSupport::KeyGenerator.new(Rails.application.secrets.secret_key_base).generate_key salt, len
    crypt = ActiveSupport::MessageEncryptor.new key
    encrypted_data = crypt.encrypt_and_sign text
    "#{salt}$$#{encrypted_data}"
  end

  def decrypt(text)
    salt, data = text.split '$$'

    len   = ActiveSupport::MessageEncryptor.key_len
    key   = ActiveSupport::KeyGenerator.new(Rails.application.secrets.secret_key_base).generate_key salt, len
    crypt = ActiveSupport::MessageEncryptor.new key
    crypt.decrypt_and_verify data
  end
end
