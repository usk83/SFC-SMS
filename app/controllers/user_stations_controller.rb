class UserStationsController < InheritedResources::Base

  private

    def user_station_params
      params.require(:user_station).permit(:user_id, :station_id)
    end
end

