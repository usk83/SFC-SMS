class ShiftDatesController < InheritedResources::Base

  before_action :check_admin_access

  private

    def shift_date_params
      params.require(:shift_date).permit(:date)
    end
end

