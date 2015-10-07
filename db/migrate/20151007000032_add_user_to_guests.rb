class AddUserToGuests < ActiveRecord::Migration
  def change
    add_reference :guests, :user, index: true, foreign_key: true
  end
end
