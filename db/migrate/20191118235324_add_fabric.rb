class AddFabric < ActiveRecord::Migration[6.0]
  def change
    create_table :fabrics do |t|
      t.string :fabric_type
      t.string :color
      t.string :size
      t.string :description
      t.string :name
      t.string :pic
      t.timestamps
    end
  end
end
