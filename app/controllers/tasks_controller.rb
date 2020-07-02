class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def new
    end

    def show
        @task = Task.find(params[:id])
    end

    def create
        @task = Task.new(params.require(:task).permit(:title))
        @task.save
        redirect_to @task
    end

   private
    def task_param
        params.require(:todo).permit(:title)
    end

end
