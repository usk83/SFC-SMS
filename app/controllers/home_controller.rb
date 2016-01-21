class HomeController < ApplicationController
  def index
    @shift_dates = ShiftDate.all
  end
  def show
    @id = params[:id]
    if @id.blank?
      @id = ShiftDate.all[0].id
    end
    @shift_dates = ShiftDate.all
    @shifts = UserShift.all.select do |us|
      us.user_id == current_user.id && us.task_shift.shift_time.shift_date.id == @id.to_i
    end
  end
end
