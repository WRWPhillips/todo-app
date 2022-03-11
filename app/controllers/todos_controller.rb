class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create 
    todo = Todo.create([...todo_params, completed: false])
  end

  def todo_params
    params.require(:todo).permit(:name, :description)
  end 

  def edit
  end
end
