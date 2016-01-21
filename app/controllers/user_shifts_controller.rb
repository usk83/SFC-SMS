class UserShiftsController < InheritedResources::Base

  before_action :check_admin_access

  private

    def user_shift_params
      params.require(:user_shift).permit(:user_id, :task_shift_id)
    end
end

