class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @destinations = current_user.destinations.all
  end
end
