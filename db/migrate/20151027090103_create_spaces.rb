class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :location
      t.bigint :phone_number
      t.integer :number_of_rooms
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
