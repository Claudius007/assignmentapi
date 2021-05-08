class RemoveTimestampsFromWorker < ActiveRecord::Migration[6.1]
  def change
    remove_column :workers, :created_at, :string
    remove_column :workers, :updated_at, :string
  end
end
