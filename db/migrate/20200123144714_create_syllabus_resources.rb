class CreateSyllabusResources < ActiveRecord::Migration[5.2]
  def change
    create_table :syllabus_resources do |t|
      t.integer :syllabus_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
