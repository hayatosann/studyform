class Admin::UsersController < ApplicationController
  def index
    @users = User.where(admin: 0)
  end
end
