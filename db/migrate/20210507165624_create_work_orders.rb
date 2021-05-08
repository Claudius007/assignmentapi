class CreateWorkOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :work_orders do |t|
      t.string :title
      t.string :description
      t.date :deadline

      t.timestamps
    end
  end
end
