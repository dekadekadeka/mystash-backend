class CreateFlosses < ActiveRecord::Migration[6.0]
  def change
    create_table :flosses do |t|
      t.string :brand
      t.string :color
      t.string :amount

      t.timestamps
    end
  end
end
