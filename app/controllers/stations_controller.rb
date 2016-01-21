class StationsController < InheritedResources::Base

  before_action :check_admin_access

  private

    def station_params
      params.require(:station).permit(:name)
    end
end

