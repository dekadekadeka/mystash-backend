class AddColorToNotions < ActiveRecord::Migration[6.0]
  def change
    add_column :notions, :color, :string
  end
end
