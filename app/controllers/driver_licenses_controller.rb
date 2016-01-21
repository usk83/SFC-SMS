class DriverLicensesController < InheritedResources::Base

  before_action :check_admin_access

  private

    def driver_license_params
      params.require(:driver_license).permit(:type)
    end
end

