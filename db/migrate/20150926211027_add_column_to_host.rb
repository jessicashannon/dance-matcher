class AddColumnToHost < ActiveRecord::Migration
  def change
    add_column :hosts, :capacity, :integer
  end
end
