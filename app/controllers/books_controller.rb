class BooksController < ApplicationController
  before_action :authenticate_user!


  def create
  	@book = Book.new(book_prams)
  	@book.user_id = current_user.id


  end

  def index
  	@book=Book.new
  	@books = Book.all

  end

  def show
  	@book =  Book.find(params[:id])

  end

  def edit
  end
end
