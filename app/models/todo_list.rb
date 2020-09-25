class TodoList < ApplicationRecord
  default_scope { order(prioritet: :desc)}
  
end
