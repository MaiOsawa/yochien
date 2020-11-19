class CreateMyFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :my_facilities do |t|
      t.integer :name
      t.integer :tel
      t.integer :address
      t.boolean :lunch
      t.boolean :pre
      t.integer :memo
      t.string :user_id

      t.timestamps
    end
  end
end
