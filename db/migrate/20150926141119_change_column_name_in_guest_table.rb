class ChangeColumnNameInGuestTable < ActiveRecord::Migration
  def change
    rename_column :guests, :smokes, :smokes
  end
end
