class AddRoutineToWods < ActiveRecord::Migration[5.2]
  def change
    add_column :wods, :Routine, :string
  end
end
