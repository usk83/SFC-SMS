class DesiredTasksController < InheritedResources::Base

  private

    def desired_task_params
      params.require(:desired_task).permit(:user_id, :task_id)
    end
end

