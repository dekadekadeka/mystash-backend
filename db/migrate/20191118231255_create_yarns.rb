class CreateYarns < ActiveRecord::Migration[6.0]
  def change
    create_table :yarns do |t|
      t.string :brand
      t.string :name
      t.string :color
      t.string :size
      t.string :lot
      t.string :pic
      t.timestamps
    end
  end
end
