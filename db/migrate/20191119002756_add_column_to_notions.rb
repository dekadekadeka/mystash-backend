class AddColumnToNotions < ActiveRecord::Migration[6.0]
  def change
    add_column :notions, :user_id, :integer
  end
end
