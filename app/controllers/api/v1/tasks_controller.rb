class TasksController < ApplicationController
	
		module Api::V1
    		class TasksController < ApiController
    		def index
    		@tasks = Task.all
    		render json: @tasks.to_json(only: [:name, :priority, :due_date])
    		# render json: @tasks
  			end
    	end
	end

end
