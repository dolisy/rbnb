class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save

    redirect_to book_path(@book)
  end

  private

  def book_params
    params.require(:book).permit(:title, :user_id, :author, :category,
      :publisher, :description, :language, :condition)
  end
end
