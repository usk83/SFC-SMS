class ActiveNightsController < InheritedResources::Base

  private

    def active_night_params
      params.require(:active_night).permit(:user_id, :allnight_id)
    end
end

