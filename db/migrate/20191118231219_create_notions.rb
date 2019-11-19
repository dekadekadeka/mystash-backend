class CreateNotions < ActiveRecord::Migration[6.0]
  def change
    create_table :notions do |t|
      t.string :name
      t.string :brand
      t.string :size
      t.string :description
      t.timestamps
    end
  end
end
