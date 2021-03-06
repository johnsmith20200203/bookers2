class BooksController < ApplicationController
  before_action :authenticate_user!

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    # WARNING: book投稿詳細画面ではcurrent_userではなくbookの投稿者情報で上書き
    @user = @book.user
  end

  def edit
    @book = Book.find(params[:id])

    if @book.user != current_user
      redirect_to books_url
    end
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user

    if @book.save
      redirect_to book_url(@book), notice: "You have created book successfully."
    else
      @books = Book.all
      render :index
    end
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to book_url(@book), notice: "You have updated book successfully."
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_url
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
