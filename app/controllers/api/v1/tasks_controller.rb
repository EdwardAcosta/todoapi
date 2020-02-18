    class TasksController < ApplicationController
	
	module Api::V1
    	class TasksController < ApiController
            def index
                @tasks = Task.all
    	        render json: @tasks
                # render json: @tasks.to_json(only: [:name, :priority, :due_date])            
    
            end
    	end
	end

end
