class CreateUradjenos < ActiveRecord::Migration[6.0]
  def change
    create_table :uradjenos do |t|

      t.timestamps
    end
  end
end
