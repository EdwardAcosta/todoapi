module Api::V1
	class TasksController < ApiController
        # before_action :authenticate_user
        before_action :set_task, only: [:show, :update, :destroy]   
         
            def index
                @tasks = Task.all
    	        render json: @tasks
                # render json: @tasks.to_json(only: [:name, :priority, :due_date])            
                def show
                  render json: @task
                end

                def create
                  @task = Task.new(task_params)

                if @task.save
                    render json: @task, status: :created
                    else
                    render json: @task.errors, status: :unprocessable_entity
                    end
                end

                def update
                    if @task.update(task_params)
                    render json: @task
                    else
                    render json: @task.errors, status: :unprocessable_entity
                    end
                end

                def destroy
                  @task.destroy
                end

                
                # private
                #     def set_task
                #         @task = Task.find(params[:id])
                #     end    
                
                def task_params
                params.require(:task).permit(:name, :priority, :due_date)
                end           
            end
        end
    	
    end
# end

# end
