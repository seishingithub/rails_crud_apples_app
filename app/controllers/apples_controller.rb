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
end