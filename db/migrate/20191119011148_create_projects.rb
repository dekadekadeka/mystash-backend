class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.belongs_to :user
      t.belongs_to :pattern
      t.belongs_to :yarn
    end
  end
end
