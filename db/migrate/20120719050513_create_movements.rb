class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.string :note
      t.float :amount
      t.timestamps
      t.references :movement_type
      t.references :product
      t.references :provider, :null => true
      t.references :order,    :null => true
    end
  end
end
