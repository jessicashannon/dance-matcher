class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :smoking
      t.string :dogs
      t.string :cats
      t.string :bedding
      t.string :towels

      t.timestamps null: false
    end
  end
end
