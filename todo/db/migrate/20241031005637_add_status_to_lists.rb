class AddStatusToLists < ActiveRecord::Migration[7.2]
  def change
    add_column :lists, :status, :string
  end
end
