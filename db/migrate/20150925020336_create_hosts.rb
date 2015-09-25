class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :smokes
      t.string :dogs
      t.string :cats
      t.string :bedding
      t.string :towels

      t.timestamps null: false
    end
  end
end
