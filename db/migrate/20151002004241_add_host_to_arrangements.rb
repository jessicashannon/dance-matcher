class AddHostToArrangements < ActiveRecord::Migration
  def change
    add_reference :arrangements, :host, index: true, foreign_key: true
  end
end
