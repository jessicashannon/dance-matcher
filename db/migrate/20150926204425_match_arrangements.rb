class MatchArrangements < ActiveRecord::Migration
  create_table :match_arrangements do |t|
    t.references :arrangement, index: true, foreign_key: true
    t.references :match, index: true, foreign_key: true
  
  end
end
