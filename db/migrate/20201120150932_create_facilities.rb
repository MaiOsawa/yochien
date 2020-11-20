class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.boolean :lunch
      t.boolean :pre
      t.string :memo
      t.string :user_id

      t.timestamps
    end
  end
end
