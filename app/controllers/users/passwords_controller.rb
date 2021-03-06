# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  def new
    redirect_to root_url
  end

  # POST /resource/password
  def create
    redirect_to root_url
  end

  # GET /resource/password/edit?reset_password_token=abcdef
  def edit
    redirect_to root_url
  end

  # PUT /resource/password
  def update
    redirect_to root_url
  end

  # protected

  # def after_resetting_password_path_for(resource)
  #   super(resource)
  # end

  # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   super(resource_name)
  # end
end
