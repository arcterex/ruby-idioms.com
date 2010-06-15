class IdiomsController < ApplicationController
  def index
    @idioms = Idiom.all
  end

  def new
    @idiom = Idiom.new
  end
  
  def show
    @idiom = Idiom.find(params[:id])
  end

  def create
    @idiom = Idiom.new(params[:idiom])
    if @idiom.save then
      flash[:notice] = "Idiom was created"
      redirect_to idioms_path
    else
      flash[:error] = "Error saving your idiom"
      render :action => "edit"
    end
  end
  
  def edit
    @idiom = Idiom.find(params[:id])
  end

  def update
    @idiom = Idiom.update_attributes(params[:idiom])
  end

  def destroy
    @idiom = Idiom.find(params[:id])
    @idiom.destroy
  end

end
