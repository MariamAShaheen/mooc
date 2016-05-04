class LicturesController < InheritedResources::Base

  private

    def licture_params
      params.require(:licture).permit(:content, :attachment, :course_id)
    end
end

