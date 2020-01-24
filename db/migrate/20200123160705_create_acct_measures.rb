class CreateAcctMeasures < ActiveRecord::Migration[5.2]
  def change
    create_table :acct_measures do |t|
      t.string :measure
      t.integer :acct_metric_id

      t.timestamps
    end
  end
end
