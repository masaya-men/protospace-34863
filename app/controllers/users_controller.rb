class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = User.find(params[:id])
  end
end
