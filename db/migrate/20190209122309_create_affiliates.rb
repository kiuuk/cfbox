class CreateAffiliates < ActiveRecord::Migration[5.2]
  def change
    create_table :affiliates do |t|
      t.string :affiliateid, null:false
      t.string :password, null:false
      t.string :name, null:false
      t.string :address, null:false
      t.string :phone, null:false
      t.string :picture
      t.string :website
      t.string :sns

      t.timestamps
    end
  end
end
