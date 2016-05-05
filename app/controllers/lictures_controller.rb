class LicturesController < InheritedResources::Base
before_action :true_user, only: [:edit,:update,:destroy ]
before_action :authenticate_user!, :except => [:show, :index]
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
      
      @user = User.find(params[:id])
      redirect_to root_path 
      end
  
  
  end

