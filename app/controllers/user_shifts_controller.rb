class UserShiftsController < InheritedResources::Base

  private

    def user_shift_params
      params.require(:user_shift).permit(:user_id, :task_shift_id)
    end
end

