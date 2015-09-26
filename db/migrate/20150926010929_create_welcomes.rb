class CreateWelcome < ActiveRecord::Migration
  def change
    create_table :welcome do |t|

      t.timestamps null: false
    end
  end
end
