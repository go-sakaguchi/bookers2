class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.boo
  end

  def edit
  end
end
