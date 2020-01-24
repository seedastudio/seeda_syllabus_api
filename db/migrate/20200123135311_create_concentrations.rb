class CreateConcentrations < ActiveRecord::Migration[5.2]
  def change
    create_table :concentrations do |t|
      t.string :title
      t.string :description
      t.integer :syllabus_id

      t.timestamps
    end
  end
end
