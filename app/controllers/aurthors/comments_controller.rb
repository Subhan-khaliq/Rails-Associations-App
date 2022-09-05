# frozen_string_literal: true

module Aurthors
  class CommentsController < CommentsController
    before_action :set_commentable

    private

    def set_commentable
      @commentable = Aurthor.find(params[:aurthor_id])
    end
  end
end
