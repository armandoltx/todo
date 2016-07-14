class ListsController < ApplicationController
  def index
    @lists = @current_user.lists
  end

  def new
    @list = List.new
  end
  def create
    list = List.create list_params
    list.user_id = @current_user.id
    list.save
    redirect_to list_path(list)
  end

  def edit
    @list = List.find params[:id]
  end

  def update
    list = List.find params[:id]
    list.update list_params
    redirect_to :back #when we change anything in the editing form redirect to the same page
  end

  def show
    @lists = @current_user.lists
    @list = List.find(params[:id])
    @task = Task.new
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:title, :category)
  end

end
