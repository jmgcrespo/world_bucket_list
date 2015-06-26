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

    respond_to do |format|
      if (@destination.save)
        format.html { redirect_to :root}
        format.js
      else
        format.html { render 'new'}
        format.js { render 'new'}
      end
    end
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def destroy
    Destination.destroy(params[:id])
    redirect_to :root
  end

  def geo_data
    @destination = Destination.find(params[:id])

    respond_to do |format|
      format.js  { render json: @destination.geo_data }
    end
  end

  private

  def destination_params
    params.require(:destination).permit(:name)
  end

end
