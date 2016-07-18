class TasksController < ApplicationController
  def index
    @tasks = @current_user.tasks
    #copy from show
    @lists = @current_user.lists
    # @task = Task.find_by :id => params[:id]
    @list = List.find params[:list_id]
  end

  def new
    @list = List.find params[:list_id]
    @task = Task.new
  end

  def create
      # task = Task.create task_params
      task = Task.new task_params
      list = List.find params[:list_id]
      if task.save
        list.tasks << task
        redirect_to list_tasks_path(list)
      else
        redirect_to :back
      end
      # list = List.find params[:list_id] # this is the url stored in a var
      # list.tasks << task # apending the task in the task in that list
      # redirect_to :back #when we change anything in the editing form redirect to the same page
  end

  def edit
    @task = Task.find params[:id]
    @list = List.find params[:list_id]

  end

  def update
      task = Task.find params[:id]
      task.update task_params
      redirect_to list_task_path(task.list, task)
  end

  def show
    @lists = @current_user.lists
    @task = Task.find_by :id => params[:id]
    @list = List.find params[:list_id]
  end

  def destroy
    task = Task.find params[:id] # storing in a var the task we want to delete. We are looking for the task by id
    task.destroy  # to delete the var
    redirect_to :back # the url
  end

  private
  def task_params
    params.require(:task).permit(:title, :status, :description)
  end


end
