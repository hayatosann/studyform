class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.new(comment_params)
    @comment.save!
    redirect_to article_path(params[:article_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:comment).merge(article_id: params[:article_id])
  end
end
