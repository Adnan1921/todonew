class CreateTodoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_lists do |t|
      t.string :task_title
      t.text :task_description
      t.datetime :task_time
      t.binary :difficulty_level

      t.timestamps
    end
  end
end
