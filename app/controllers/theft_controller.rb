class TheftController < ApplicationController
  before_action :enviar_bici, only: [:new, :create]
  def new
    @theft = current_user.theft.new
  end
  def create
    @stole = current_user.theft.new(enviar_parametros)
    @stole.bike_id = @bike
    puts @stole
    if @stole.save
      redirect_to root_path, notice: 'Creaste un robo'
    else
      render new_bike_stole(@stole.bike)
    end
  end

  def update
  end

  private

  def enviar_bici
    @bike = Bike.find(params[:bike_id])
  end
  def enviar_parametros
    params.require(:stole).permit(:user_id, :bike_id, :address, :time_theft).merge(user_id: current_user)
  end


end
