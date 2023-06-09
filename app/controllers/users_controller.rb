class UsersController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @users = User.all
    @book_create = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
