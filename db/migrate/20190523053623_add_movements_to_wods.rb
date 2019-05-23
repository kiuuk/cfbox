class AddMovementsToWods < ActiveRecord::Migration[5.2]
  def change
    add_column :wods, :movements, :string
    remove_column :wods, :movement_1
    remove_column :wods, :movement_2
    remove_column :wods, :movement_3
    remove_column :wods, :movement_4
    remove_column :wods, :movement_5
    remove_column :wods, :movement_6
    remove_column :wods, :movemtnt_7
  end
end
