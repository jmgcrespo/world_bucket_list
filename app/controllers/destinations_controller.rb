class DestinationsController < ApplicationController
  def new
    @destination = current_user.destinations.new
  end

  def create
    
    @destination = current_user.destinations.new(destination_params)

    if @destination.save
      @destination = Destination.new
      render :new
    else
      render :new
    end
  end

  private

  def destination_params
    params.require(:destination).permit(:name)
  end
end
