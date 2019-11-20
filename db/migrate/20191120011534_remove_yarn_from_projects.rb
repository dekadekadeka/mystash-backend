class RemoveYarnFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :yarn_id, :integer
  end
end
