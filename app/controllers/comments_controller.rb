class CommentsController < ApplicationController
  def create
    if Comment.create(create_params)
      redirect_to prototype_path(params[:prototype_id])
    else
      render "prototypes/show"
    end
  end


  private
  def create_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end
