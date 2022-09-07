class AddStatusToAurthors < ActiveRecord::Migration[6.1]
  def change
    add_column :aurthors, :status, :integer
  end
end
