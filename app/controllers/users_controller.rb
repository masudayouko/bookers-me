class UsersController < ApplicationController

	def show
	  @user = User.find(params[:id])
	  #@books = Book.where(user_id: @user.id)
	  @books = @user.books
	  @book = Book.new

    end

    def index
      @book = Book.new
      @users = User.all
    end

    def create
    end


end
