class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :price
      t.string :location
      t.integer :rating
      t.string :availability
      t.float :size
      t.string :property_type

      t.timestamps null: false
    end
  end
end
