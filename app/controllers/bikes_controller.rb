class BikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bike, only:[:show, :edit, :update]
  def index
    @bikes = current_user.bikes
  end

  def new
    @bike = Bike.new
  end

  def show
  end

  def edit
  end

  def update
    if @bike.update
      redirect_to '/bike/new' , notice: "haz creado una bici"
    else
      render :index
    end
  end

  def created
    @bike = Bike.new(enviar_parametros)
    if @bike.save
      redirect_to '/bike/new' , notice: "haz creado una bici"
    else
      render :new
    end
  end

  def destroy
    @bike = Bike.find(params[:id])
    if @bike.destroy
      redirect_to '/bikes' , notice: "haz eliminado la bici"
    end
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def enviar_parametros
      params.require(:bike).permit(:color,:brand,:ring, :description,:photo, :user_id)
  end

end
