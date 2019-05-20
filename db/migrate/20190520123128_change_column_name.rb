class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :ideas, :moment_to_be_delivered, :delivery_time
  end
end
