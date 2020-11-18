class CreateMyFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :my_facilities do |t|
      t.string :name
      t.string :tel
      t.string :address
      t.boolean :lunch
      t.boolean :pre
      t.string :memo
      t.string :user_id

      t.timestamps
    end
  end
end
