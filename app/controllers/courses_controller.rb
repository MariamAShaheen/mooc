class CoursesController < InheritedResources::Base
before_action :true_user, only: [:edit,:update,:destroy]
before_action :authenticate_user!, :except => [:show, :index]

   
  private
  
    def course_params
      params.require(:course).permit(:title, :user_id)
    end
    def true_user
      #redirect_to root_path unless course.user.id==current_user.id
      #if current_user != course.find(params[:id]).user
      #redirect_to root_path
    
      @user = User.find(params[:id])
      redirect_to root_path 
      end
      
   
    
    end
	


