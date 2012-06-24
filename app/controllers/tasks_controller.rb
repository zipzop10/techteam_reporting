class TasksController < ApplicationController
  def new
  	  @task= Task.new
  end

  def create
  
	 @task = Task.new(params[:task])
	 redirect_to @task
  
  end
  
  def show
  	  @task = Task.find(params[:id])
  end
end
