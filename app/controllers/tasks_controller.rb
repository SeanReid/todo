class TasksController < ApplicationController

  before_action :set_task, only: [:destroy]

  def index
  	@tasks = Task.all
  end

  def new
  end

  def show
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.js   {  }
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :due)
  end

end
