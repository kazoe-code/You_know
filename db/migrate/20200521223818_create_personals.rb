class CreatePersonals < ActiveRecord::Migration[5.0]
  def change
    create_table :personals do |t|

      t.timestamps
    end
  end
end
