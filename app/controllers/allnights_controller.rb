class AllnightsController < InheritedResources::Base

  private

    def allnight_params
      params.require(:allnight).permit(:date)
    end
end

