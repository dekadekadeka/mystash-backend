class AddColumnToPatterns < ActiveRecord::Migration[6.0]
  def change
    add_column :patterns, :user_id, :integer
  end
end
