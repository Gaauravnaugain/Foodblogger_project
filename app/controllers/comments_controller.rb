class CommentsController < ApplicationController
  before_action :set_post ,only:[:create]
  before_action :authenticate_user!

  def create
    @comment = @post.comments.create(user: current_user, body: params[:comment_body])

    respond_to do |format|
      format.turbo_stream do 
        render turbo_stream: turbo_stream.replace(
          "post#{@post.id}comments",
          partial:"posts/post_comments",
          locals: {post: @post}
          )
      end
    end  
  end

  def destroy
    @comment = Comment.find(params[:id])
    if(@comment.user == current_user)
      @comment.destroy
    end
  end
  private 
  def set_post
    @post = Post.find(params[:post_id])
  end
end


# def destroy
#     comment = current_user.comments.find(params[:id])
#     puts "failure" and return unless comment.present?
#     if comment.destroy
#       puts "success"
#     end
# end