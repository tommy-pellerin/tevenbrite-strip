class RenameOldNameColumnInTableName < ActiveRecord::Migration[7.1]
  def change
    rename_column :events, :user_id, :admin_id
  end
end
