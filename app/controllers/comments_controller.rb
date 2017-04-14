class CommentsController < ApplicationController
  before_filter :find_post

  def create
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to post_path(@post)
  end

  private
  def find_post
    @post = current_user.posts.find(params[:id]) if params[:id]
  end

  def comment_params
    params.require(:comment).permit(:post_id, :user_id, :body)
  end
end
