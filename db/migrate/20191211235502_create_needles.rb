class CreateNeedles < ActiveRecord::Migration[6.0]
  def change
    create_table :needles do |t|
        t.string :needle_type
        t.string :size
      t.timestamps
    end
  end
end
