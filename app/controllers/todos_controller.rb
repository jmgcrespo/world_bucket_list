class TodosController < ApplicationController
  def new
    @destination = current_user.destinations.find(params[:destination_id])
    @todo = @destination.todos.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @destination = current_user.destinations.find(params[:destination_id])
    @todo = @destination.todos.new(todo_params)

    respond_to do |format|
      if @todo.save
        format.html { redirect_to @destination }
        format.js
      else
        format.html { render 'new' }
        format.js { render 'new' }
      end
    end
  end

  def destroy
    @todo = current_user.todos.find(params[:id])
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to @todo.destination }
      format.js
    end
  end

  def index
    @destination = current_user.destinations.find(params[:destination_id])
    @todos = @destination.todos.all

    respond_to do |format|
      format.html
      format.js { render json: @todos }
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :location)
  end
end
