class CreateDinosaurs < ActiveRecord::Migration
  def change
    create_table :dinosaurs do |t|
      t.string :name, null: false
      t.string :species, null: false
      t.string :type, null: false
      t.timestamps null: false
    end
  end
end
