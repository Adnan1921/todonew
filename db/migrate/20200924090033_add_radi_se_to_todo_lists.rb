class AddRadiSeToTodoLists < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_lists, :radi_se, :boolean
  end
end
