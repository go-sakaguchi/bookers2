class BookCommentsController < ApplicationController
  
  def create
    book = Book.find(params[:book_id])
    @comment = BookComment.new(book_commnet_params)
    @comment.book_id = book.id
    @comment.save
    redirect_to book_path(book)
  end
  
  def destroy
    
  end
  
  private
  
  def book_commnet_params
    params.require(:book_comment).permit(:comment)
  end
  
end