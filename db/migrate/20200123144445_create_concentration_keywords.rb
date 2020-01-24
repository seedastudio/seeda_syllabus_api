class CreateConcentrationKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :concentration_keywords do |t|
      t.integer :concentration_id
      t.integer :keyword_id

      t.timestamps
    end
  end
end
