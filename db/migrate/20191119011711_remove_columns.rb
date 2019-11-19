class RemoveColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :patterns, :user_id, :integer
    remove_column :yarns, :user_id, :integer
  end
end
