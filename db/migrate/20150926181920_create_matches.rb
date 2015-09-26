class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :host, index: true, foreign_key: true
      t.references :guest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
