class CreateSkillUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_users do |t|

      t.timestamps
    end
  end
end
