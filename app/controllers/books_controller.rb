class BooksController < ApplicationController
  def new
  end

  def create
    @book_create = Book.new(book_params)
    @book_create.user_id = current_user.id
    if @book_create.save
      flash[:notice] = "You have created book successfully."
      redirect_to book_path(book.id)
    else
      @user = User.find(current_user.id)
      @books = Book.all
      
      render :index
    end

  end
  
  def index
    @user = User.find(current_user.id)
    @books = Book.all
    @book_create = Book.new
  end
  
  def show
    @user = User.find(current_user.id)
    @book = Book.find(params[:id])
    @book_create = Book.new
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "You have updated book successfully."
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path 
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
