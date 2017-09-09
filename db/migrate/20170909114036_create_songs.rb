class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.decimal :price
      t.boolean :active

      t.timestamps
    end
  end
end
