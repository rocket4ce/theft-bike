class BikeController < ApplicationController
  def all
    @bikes = Bike.all
  end

  def view
    @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def crear
    puts "////////////////"
    puts params
    puts "////////////////"
    @bike = Bike.new(enviar_parametros)
    if @bike.save
      redirect_to '/bike/new' , notice: "haz creado una bici"
    else
      render :new
    end
  end

  private

  def enviar_parametros
      params.require(:bike).permit(:color,:brand,:ring, :description,:photo)
  end

end
