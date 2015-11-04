class CreateCages < ActiveRecord::Migration
  def change
    create_table :cages do |t|
      t.integer :capacity, null: false
      t.string :status, default: "DOWN"
      
      t.timestamps null: false
    end
  end
end
