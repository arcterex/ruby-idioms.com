class IdiomsController < ApplicationController
  def index
    @idioms = Idiom.all
  end

  def show
    @idiom = Idiom.find(params[:id])
  end

  def create
    @idiom = Idiom.new
  end

  def update
    @idiom = Idiom.update_attributes(params[:idiom])
  end

  def destroy
    @idiom = Idiom.find(params[:id])
    @idiom.destroy
  end

end
