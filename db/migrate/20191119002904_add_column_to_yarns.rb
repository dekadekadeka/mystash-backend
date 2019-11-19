class AddColumnToYarns < ActiveRecord::Migration[6.0]
  def change
    add_column :yarns, :user_id, :integer
  end
end
