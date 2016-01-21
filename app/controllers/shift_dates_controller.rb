class ShiftDatesController < InheritedResources::Base

  private

    def shift_date_params
      params.require(:shift_date).permit(:date)
    end
end

