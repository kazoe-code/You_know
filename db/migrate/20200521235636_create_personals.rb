class CreatePersonals < ActiveRecord::Migration[5.0]
  def change
    create_table :personals do |t|
      t.text :personal, null: false

      t.timestamps
    end
  end
end
