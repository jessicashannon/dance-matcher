class AddGuestToArrangements < ActiveRecord::Migration
  def change
    add_reference :arrangements, :guest, index: true, foreign_key: true
  end
end
