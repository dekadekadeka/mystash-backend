class AddUserToNeedlesAndFloss < ActiveRecord::Migration[6.0]
  def change
    add_column :needles, :user_id, :integer
    add_column :flosses, :user_id, :integer
  end
end
