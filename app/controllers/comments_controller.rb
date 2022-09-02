# frozen_string_literal: true

class CommentsController < ApplicationController
  def index
    @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.new(params[:comment])
    if @comment.save
      redirect_to @commentable, notice: 'Comment created.'
    else
      render :new
    end
  end
end
