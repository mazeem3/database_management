class BooksController < ApplicationController
  before_action except: :show do
      redirect_to sign_in_path, notice: 'Please Sign in' if @current_user.nil?
  end
  def book
      @book.pub_id = params[:book][:pub_id]
      @book.isbn = params[:book][:isbn]
      @book.title = params[:book][:title]
      @book.author = params[:book][:author]
      @book.year = params[:book][:year]
      @book.availibility = params[:book][:availibility]
  end

  def index
      @books = Book.all
   end

  def show
      @book = Book.find_by id: params[:id]
  end

  def new
      @book = Book.new
  end

  def create
      @book = Book.new
      book
      if @book.save
          redirect_to root_path, notice: 'Book Created!'
      else
          render :new
      end
  end

  def edit
      @book = Book.find_by id: params[:id]
  end

  def update
      @book = Book.find_by id: params[:id]
      book
      if @book.save
          redirect_to root_path
      else
          render :edit
      end
  end

  def delete
      Book.find(params[:id]).destroy
      redirect_to root_path
  end

end
