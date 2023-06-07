class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @book = Book.new
    @books = Book.all
  end

  def edit
  end

  def index
    @users = User.all
  end

end
