class AddChanges < ActiveRecord::Migration
  def change
	  add_column :books,:year,:integer
	  rename_column :books,:price,:cost
	  remove_timestamps :students
  end
end
