class CreateJusticeProcesses < ActiveRecord::Migration[5.0]
  def change
    create_table :justice_processes do |t|
      t.string :npu
      t.integer :user_id
      t.integer :process_class_id
      t.integer :judging_body_id
      t.boolean :priority, default: false
      t.boolean :secret, default: false

      t.timestamps
    end
  end
end
