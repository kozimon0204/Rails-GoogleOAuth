class UserController < ApplicationController
  before_action :authenticate_user!

  def index
    p user_signed_in?
  end

  def edit
  end
end
