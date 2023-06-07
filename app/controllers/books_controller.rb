class BooksController < ApplicationController
  def new
    # @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    book.save
    redirect_to book_path(book.id)
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
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    book.destroy  # データ（レコード）を削除
    redirect_to books_path  # 投稿一覧画面へリダイレクト  
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
