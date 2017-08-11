class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :email
      t.string :drone
      t.string :phone
      t.text :location
      t.integer :distance

      t.timestamps
    end
  end
end
