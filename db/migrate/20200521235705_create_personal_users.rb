class CreatePersonalUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :personal
      
      t.timestamps
    end
  end
end
