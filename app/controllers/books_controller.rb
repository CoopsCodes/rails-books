require 'pry'
class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  def delete
    @book = Book.find(params[:id])

    Book.delete(@book)

    redirect_to action: 'index'
  end

  private

  def book_params
    params.permit(:title, :author, :publisher, :genre, :description)
  end
end
