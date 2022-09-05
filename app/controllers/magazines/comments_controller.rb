# frozen_string_literal: true

module Magazines
  class CommentsController < CommentsController
    before_action :set_commentable

    private

    def set_commentable
      @commentable = Magazine.find(params[:magazine_id])
    end
  end
end
