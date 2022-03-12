class TodosController < ApplicationController
  before_action :current_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
  end

  def show

  end

  def new
    @todo = Todo.new
  end

  def create 
    todo = Todo.create(todo_params)
  end

  def update 
    @todo.update(todo_params)

    redirect_to todo_path(@todo)
  end

  def edit

  end

  def destroy
    @todo.destroy

    redirect_to todo_path
  end 

  private 

  def todo_params
    params.require(:todo).permit(:name, :description, :completed)
  end 

  def current_todo 
    @todo = Todo.find(params[:id])
  end 

end
