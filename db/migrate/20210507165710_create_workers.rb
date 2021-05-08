class CreateWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :workers do |t|
      t.references :work_order, null: true, foreign_key: true
      t.string :name
      t.string :company_name
      t.string :email

      t.timestamps
    end
  end
end
