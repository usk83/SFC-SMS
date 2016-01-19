class CommitteesController < InheritedResources::Base

  private

    def committee_params
      params.require(:committee).permit(:name)
    end
end

