class CreateCows < ActiveRecord::Migration
  def change
    create_table :cows do |t|

      t.timestamps null: false
    end
  end
end
