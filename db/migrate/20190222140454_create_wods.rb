class CreateWods < ActiveRecord::Migration[5.2]
  def change
    create_table :wods do |t|
      t.string :name
      t.string :score
      t.string :score_set
      t.string :rep
      t.string :description
      t.string :movement_1
      t.string :movement_2
      t.string :movement_3
      t.string :movement_4
      t.string :movement_5
      t.string :movement_6
      t.string :movemtnt_7

      t.timestamps
    end
  end
end
