class ChangeScheduleToDays < ActiveRecord::Migration
  def change
     rename_table :schedules, :days
   end
end
