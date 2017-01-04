class CreateProcessClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :process_classes do |t|
      t.string :name
      t.string :group

      t.timestamps
    end
  end
end
