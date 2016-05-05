class LicturesController < InheritedResources::Base
before_action :true_user, only: [:edit,:update,:destroy ]
before_action :authenticate_user!, :except => [ :index]
def upvote
     @licture = Licture.find(params[:id])
      @licture.upvote_from current_user
      redirect_to lictures_path
    end
    
    def downvote
     @licture = Licture.find(params[:id])
      @licture.downvote_from current_user
      redirect_to lictures_path
    end
 def download
      attach = Licture.find(params[:id]).attachment.path
     send_file attach

  end
  
 
 private

    def licture_params
      params.require(:licture).permit(:content, :attachment, :course_id)
    end

     def true_user
      user = Licture.find(params[:id]).course.user
      unless  user.id == current_user.id 
                redirect_to root_path 
      end
       end
  
  
  end

