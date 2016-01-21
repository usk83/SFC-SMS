class ShiftTimesController < InheritedResources::Base

  before_action :check_admin_access

  private

    def shift_time_params
      params.require(:shift_time).permit(:shift_date_id, :shift_time)
    end
end

