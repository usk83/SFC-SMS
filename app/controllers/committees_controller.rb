class CommitteesController < InheritedResources::Base

  before_action :check_admin_access

  private

    def committee_params
      params.require(:committee).permit(:name)
    end
end

