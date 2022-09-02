# frozen_string_literal: true

class Aurthor < ApplicationRecord
  before_update :update_name
  has_many :magazines, dependent: :destroy
  has_many :comments, as: :commentable

  def update_name
    # byebug
    if name_was == name.upcase
      write_attribute(:name, name)
    else
      errors.add(:name, 'Invalide Record')
      raise 'Name must be in Capital Letters.'
    end
  end
end
