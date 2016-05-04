class LicturesController < InheritedResources::Base

 def download
      attach = Licture.find(params[:id]).attachment.path
     send_file attach

  end
  private

    def licture_params
      params.require(:licture).permit(:content, :attachment, :course_id)
    end

    
  
  
  end

