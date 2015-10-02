class DropMatches < ActiveRecord::Migration
  def change
    drop_table :matches
    drop_table :match_arrangements
  end
end
