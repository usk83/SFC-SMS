class DriverLicensesController < InheritedResources::Base

  private

    def driver_license_params
      params.require(:driver_license).permit(:type)
    end
end

