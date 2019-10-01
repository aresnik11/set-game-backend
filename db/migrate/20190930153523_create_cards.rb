class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :color
      t.integer :number
      t.string :shape
      t.string :fill

      t.timestamps
    end
  end
end
