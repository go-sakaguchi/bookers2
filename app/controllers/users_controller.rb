class UsersController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @users = User.all
    @book_create = Book.new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end



end
