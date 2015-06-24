class TodosController < ApplicationController
  def new
    @destination = Destination.find(params[:destination_id])
    @todo = @destination.todos.new
  end

  def create
    @destination = Destination.find(params[:destination_id])

    @destination.todos.create(todo_params)
    redirect_to @destination
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to @todo.destination
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :location)
  end
end
