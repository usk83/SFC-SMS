class ActiveTimesController < InheritedResources::Base

  private

    def active_time_params
      params.require(:active_time).permit(:user_id, :shift_time_id)
    end
end

