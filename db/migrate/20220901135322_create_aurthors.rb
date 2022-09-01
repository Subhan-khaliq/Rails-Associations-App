# frozen_string_literal: true

class CreateAurthors < ActiveRecord::Migration[6.1]
  def change
    create_table :aurthors do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
