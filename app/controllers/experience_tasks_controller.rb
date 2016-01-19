class ExperienceTasksController < InheritedResources::Base

  private

    def experience_task_params
      params.require(:experience_task).permit(:user_id, :task_id)
    end
end

