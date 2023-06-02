class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path
  end
  
  def index
    
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    book.destroy  # データ（レコード）を削除
    redirect_to book_path  # 投稿一覧画面へリダイレクト  
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end