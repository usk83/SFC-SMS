class AffiliationsController < InheritedResources::Base

  private

    def affiliation_params
      params.require(:affiliation).permit(:user_id, :committee_id)
    end
end

