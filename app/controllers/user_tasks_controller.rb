class UserTasksController < InheritedResources::Base

  private

    def user_task_params
      params.require(:user_task).permit(:user_id, :task_id)
    end
end

