class CreateProcessMovements < ActiveRecord::Migration[5.0]
  def change
    create_table :process_movements do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.integer :justice_process_id

      t.timestamps
    end
  end
end
