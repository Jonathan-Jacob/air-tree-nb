class CreateTreehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :treehouses do |t|
      t.string :name
      t.text :description
      t.integer :price_per_day
      t.integer :cancel_days
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
