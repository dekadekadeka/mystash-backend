class AddColumnToFabric < ActiveRecord::Migration[6.0]
  def change
    add_column :fabrics, :user_id, :integer
  end
end
