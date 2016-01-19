class StationsController < InheritedResources::Base

  private

    def station_params
      params.require(:station).permit(:name)
    end
end

