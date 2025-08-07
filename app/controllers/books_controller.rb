class BooksController < ApplicationController
  def index
    @books = Book.all

    if params[:query].present?
      @search_performed = true
      @search = params[:query]
      @category = params[:category]

      if @category == "On Sale"
        @results = Book.where("category_id = 1 AND (title LIKE ? OR author LIKE ? OR genre LIKE ? OR CAST(price AS TEXT) LIKE ?)", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%")

      elsif @category == "No Stock"
        @results = Book.where("category_id = 2 AND (title LIKE ? OR author LIKE ? OR genre LIKE ? OR CAST(price AS TEXT) LIKE ?)", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%")

      elsif @category == "Bestsellers"
        @results = Book.where("category_id = 3 AND (title LIKE ? OR author LIKE ? OR genre LIKE ? OR CAST(price AS TEXT) LIKE ?)", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%")

      elsif @category == "General"
        @results = Book.where("category_id = 4 AND (title LIKE ? OR author LIKE ? OR genre LIKE ? OR CAST(price AS TEXT) LIKE ?)", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%")

      elsif @category == "Everything"
        @results = []

        @results = Book.where("title LIKE ? OR author LIKE ? OR genre LIKE ? OR CAST(price AS TEXT) LIKE ?", "%#{@search}%", "%#{@search}%", "%#{@search}%", "%#{@search}%")
      else
        @results = []
      end
    else
      @search_performed = false
      @results = []
    end
  end

  def show
    @show = Book.find(params[:id])
  end
end
