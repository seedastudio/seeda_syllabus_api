class CreateAcctPartners < ActiveRecord::Migration[5.2]
  def change
    create_table :acct_partners do |t|
      t.string :name
      t.string :website
      t.integer :syllabus_id

      t.timestamps
    end
  end
end
