class ResponsibleTasksController < InheritedResources::Base

  private

    def responsible_task_params
      params.require(:responsible_task).permit(:user_id, :task_id)
    end
end

