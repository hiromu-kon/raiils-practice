class Api::V1::BooksController < ApplicationController
    before_action :set_book, only: [:show, :update, :destroy]

    def index
        books = Book.select("id", "author")
        render json: { code: 200, books: books }
    end

    def show
        render json: { code: 200, data: @book }
    end

    def create
        book = Book.new(book_params)

        if book.save
            render json: { code: 200, data: book }
        else
            render json: { code: 500, data: book.errors }
        end
    end

    def destroy
        @book.destroy
        render json: { status: 200, data: @book }
    end

    def update
        if @book.update(book_params)
            render json: { status: 200, book: @book }
        else
            render json: { status: 200, data: @book.errors }
        end
    end

    private

    def set_book
        @book = Book.find(params[:id])
    end

    def book_params
        params.require(:book).permit(:author, :title)
    end
end
