class ApplesController < ApplicationController
  def index
    @apples = Apple.all
  end

  def new

  end

  def create
    @apple = Apple.new
    @apple.type_of_apple = params[:apple][:type_of_apple]
    @apple.apple_quality = params[:apple][:apple_quality]
    @apple.save
    redirect_to '/apples'
  end

  def show
    @apple = Apple.find(params[:id])
  end

  def edit
    @apple = Apple.find(params[:id])
  end

  def update
    @apple = Apple.find(params[:id])
    @apple.type_of_apple = params[:apple][:type_of_apple]
    @apple.apple_quality = params[:apple][:apple_quality]
    @apple.save
    redirect_to "/apples/#{@apple.id}"
  end
end