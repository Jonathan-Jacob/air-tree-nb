class AddCapacityToTreehouse < ActiveRecord::Migration[6.0]
  def change
        add_column :treehouses, :capacity, :integer
  end
end
