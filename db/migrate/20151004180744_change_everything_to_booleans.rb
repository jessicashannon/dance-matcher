class ChangeEverythingToBooleans < ActiveRecord::Migration
  def change
    change_table :hosts do |t|
      t.change :smokes, :boolean
      t.change :dogs, :boolean
      t.change :cats, :boolean
      t.change :bedding, :boolean
      t.change :towels, :boolean
    end
    change_table :guests do |t|
      t.change :smokes, :boolean
      t.change :dogs, :boolean
      t.change :cats, :boolean
      t.change :bedding, :boolean
      t.change :towels, :boolean
    end
  end
end
