class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @show = Book.find(params[:id])
  end
end
