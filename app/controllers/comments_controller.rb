class CommentsController < ApplicationController
    before_action :find_commentable

  def new
    @forum = Forum.find(params[:id])
    @comment = Comment.new
  end

  def create
    @commentable.comments.build(comment_params)
    if @commentable.save
      redirect_back(fallback_location: root_path)
    else
      flash[:notice] = 'sorry could not '
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Forum.find_by_id(params[:forum_id]) if params[:forum_id]
  end

  
end
