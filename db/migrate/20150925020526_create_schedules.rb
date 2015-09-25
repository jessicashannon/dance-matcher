class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :day
      t.references :host, index: true, foreign_key: true
      t.references :guest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
