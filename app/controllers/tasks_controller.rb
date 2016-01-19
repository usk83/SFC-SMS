class TasksController < InheritedResources::Base

  private

    def task_params
      params.require(:task).permit(:name, :station_id)
    end
end

