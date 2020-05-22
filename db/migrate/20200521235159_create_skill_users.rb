class CreateSkillUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :skill
      t.timestamps
    end
  end
end
