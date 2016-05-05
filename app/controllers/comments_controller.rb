class CommentsController < InheritedResources::Base

  def create 
  @licture =Licture.find(params[:licture_id])
  @comment = @licture.comments.create(params.require(:comment).permit(:id, :licture_id, :body))
  @comment.user = current_user
  
  respond_to do |format| 
    if @comment.save
      format.html{redirect_to @licture, notice: "Comments was sussefully created"}
      format.json{render json: @comment, status: :created, location: @comment}
    else 
      format.html{redirect action: "new"}
      format.json{render json: @comment.errors, status: :unprocessable_entit}
   
    end

end
end
end
