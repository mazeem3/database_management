class PublisherController < ApplicationController
  before_action except: :show do
      redirect_to sign_in_path, notice: 'Please Sign in' if @current_user.nil?
  end

  def publisher
      @publisher = Publisher.new
      @publisher.pub_name = params[:publisher][:pub_name]

  end

  def show
      @publisher = Publisher.find_by id: params[:id]
  end

  def new
      @publisher = Publisher.new
  end

  def create
      publisher
      if @publisher.save
          redirect_to root_path, notice: 'Publisher Created!'
      else
          render :new
      end
  end

end
