class TasksController < ApplicationController
  def index
    @tasks = @current_user.tasks
  end

  def new
    @list = List.find params[:list_id]
    @task = Task.new
  end

  def create
      task = Task.create task_params
      list = List.find params[:list_id] # this is the url stored in a var
      list.tasks << task # apending the task in the task in that list
      redirect_to list_tasks_path
  end

  def edit
    @task = Task.find params[:id]
    @list = List.find params[:list_id]

  end

  def update
      task = Task.find params[:id]
      task.update task_params
      redirect_to list_tasks_path
  end

  def show
    @task = Task.find params[:id]
    @list = List.find params[:list_id]
  end

  def destroy
    task = Task.find params[:id]
    task.destroy
    redirect_to list_tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :status, :description)
  end


end
