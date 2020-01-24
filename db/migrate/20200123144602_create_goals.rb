class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :description
      t.integer :syllabus_id

      t.timestamps
    end
  end
end
