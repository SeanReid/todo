class TaskController < ApplicationController
  def index
  	@tasks = Task.all
  end

  def new
  end

 def edit
 end

private

def set_task
      @task = Task.find(params[:id])
    end

end
