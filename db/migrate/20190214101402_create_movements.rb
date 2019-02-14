class CreateMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :movements do |t|
      t.string :exercise
      t.string :equipment
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
