class UsersController < ApplicationController
  def show
    @articles = User.find(params[:id]).articles
  end
end
