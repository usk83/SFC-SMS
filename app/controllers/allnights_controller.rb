class AllnightsController < InheritedResources::Base

  before_action :check_admin_access

  private

    def allnight_params
      params.require(:allnight).permit(:date)
    end
end

