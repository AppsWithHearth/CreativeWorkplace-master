class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # POST /comments
  def create
    @comment = Comment.new(comment_params)
    @post = @comment.post


    if @comment.save
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      render "posts/show"
    end
  end

  # DELETE /comments/1
  def destroy
    if current_user == @comment.user
      @comment.destroy
      redirect_to @comment.post, notice: 'Comment was successfully destroyed.'
    else
      redirect_to @comment.post, alert: 'Cannot delete some.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :body)
    end
end
