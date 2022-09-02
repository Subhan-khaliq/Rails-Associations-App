# frozen_string_literal: true

class Magazine < ApplicationRecord
  belongs_to :aurthor
  has_many :comments, as: :commentable
end
