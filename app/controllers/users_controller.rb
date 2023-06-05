class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @book = Book.new
    # @books = @user.books
  end

  def edit
  end
  
  def index
    @users = User.all
  end
  
end
