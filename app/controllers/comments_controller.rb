# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    @comment = @commentable.comments.new comment_params
    @comment.save
    redirect_to @commentable
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end

#resource and resources (naming convention of models and controllers)
