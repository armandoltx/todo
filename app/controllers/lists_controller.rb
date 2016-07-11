class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
