class RemoveUserIdFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :"user-id", :integer
  end
end
