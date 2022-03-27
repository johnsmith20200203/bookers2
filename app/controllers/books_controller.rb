class BooksController < ApplicationController
  def index
  end

  def show
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user

    if @book.save
      redirect_to book_url(@book), success: "You have created book successfully."
    else
      render :index
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
