class BooksController < ApplicationController

	def new
	end

	def create
		# render plain: params[:book] .inspect
		@book=Book.new(book_params)
		@book.save
		redirect_to @book
	end

	def show
		@book=Book.find(params[:id])
	end

	def index
		@books=Book.all
	end

	private 
		def book_params
			params.require(:book) .permit(:title, :price, :book_id, :publisher, :description, :number)
		end
end
