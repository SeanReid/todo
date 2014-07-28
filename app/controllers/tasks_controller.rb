class TasksController < ApplicationController

  before_action :set_task, only: [:destroy]

  def index
  	@tasks = Task.all
  end

  def new
    @task = Task.new
  end

def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to :action => :index
    else
  
    render 'index'
    end
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
      params.require(:task).permit(:title)
    end

end
