class CreateAcctMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :acct_metrics do |t|
      t.string :metric
      t.integer :syllabus_id

      t.timestamps
    end
  end
end
