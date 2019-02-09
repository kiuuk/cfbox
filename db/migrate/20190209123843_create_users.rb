class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :userid, null:false
      t.string :password, null:false
      t.string :name, null:false
      t.references :affiliate, foreign_key:true
      t.string :phone
      t.string :picture
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
