class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
    end
  end
end
