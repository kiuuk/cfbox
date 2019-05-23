class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :wods, :Routine, :routine
  end
end
