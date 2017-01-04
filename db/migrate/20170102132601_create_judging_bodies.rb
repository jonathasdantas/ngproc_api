class CreateJudgingBodies < ActiveRecord::Migration[5.0]
  def change
    create_table :judging_bodies do |t|
      t.string :name
      t.integer :district_id

      t.timestamps
    end
  end
end
