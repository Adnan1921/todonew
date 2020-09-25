class AddPrioritetToTodoLists < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_lists, :prioritet, :string
  end
end
