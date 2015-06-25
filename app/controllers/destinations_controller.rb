class DestinationsController < ApplicationController
  def new
    @destination = current_user.destinations.new
    respond_to do |format|
      format.html
      format.js 
    end
  end

  def create

    @destination = current_user.destinations.new(destination_params)

    if @destination.save
      @destination = Destination.new
      redirect_to :root
    else
      render :new
    end
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def destroy
    Destination.destroy(params[:id])
    redirect_to :root
  end

  private

  def destination_params
    params.require(:destination).permit(:name)
  end

end
