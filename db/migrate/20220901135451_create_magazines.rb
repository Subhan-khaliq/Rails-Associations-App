# frozen_string_literal: true

class CreateMagazines < ActiveRecord::Migration[6.1]
  def change
    create_table :magazines do |t|
      t.string :title
      t.belongs_to :aurthor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
