class RemoveColumnNameFromEvent < ActiveRecord::Migration[7.1]
  def change
    remove_column :events, :admin_id, :integer
  end
end
