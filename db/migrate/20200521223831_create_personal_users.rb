class CreatePersonalUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_users do |t|

      t.timestamps
    end
  end
end
