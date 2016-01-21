class UserShiftsController < InheritedResources::Base

  before_action :check_admin_access

  def index
    # @user_shifts = UserShift.group('task_shift_id')
    @user_shifts = UserShift.all
    @user_shifts = @user_shifts.sort do |aa, bb|
      aa.task_shift.task.name <=> bb.task_shift.task.name
    end
    @user_shifts = @user_shifts.sort do |aa, bb|
      aa.task_shift.shift_time.shift_datetime <=> bb.task_shift.shift_time.shift_datetime
    end
  end

  private

    def user_shift_params
      params.require(:user_shift).permit(:user_id, :task_shift_id)
    end
end

