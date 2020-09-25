class CreateRadiSes < ActiveRecord::Migration[6.0]
  def change
    create_table :radi_ses do |t|

      t.timestamps
    end
  end
end
