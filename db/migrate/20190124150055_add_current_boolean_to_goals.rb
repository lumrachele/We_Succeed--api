class AddCurrentBooleanToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :current, :boolean, :default => true
  end
end
