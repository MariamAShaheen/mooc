class CoursesController < InheritedResources::Base
before_action :true_user, only: [:edit,:update,:destroy]
before_action :authenticate_user!, :except => [ :index]

   
  private
  
    def course_params
      params.require(:course).permit(:title, :user_id)
    end
    def true_user
      user = Course.find(params[:id]).user
       unless user.id==current_user.id
       redirect_to root_path
       end
       end

  
  
    end
	


