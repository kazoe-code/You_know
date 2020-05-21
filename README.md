## usersテーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string |             |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :skill, through: :slill_users
- has_many :personal, through: :personal_users

## skillsテーブル

| Column | Type   | Options    |
| ------ | ------ | ---------- |
| skill  | string | null:false |

### Association
- has_many :personal, through: :personal_users

## personalsテーブル

| Column       | Type       | Options                      |
| ------------ | ---------- | ---------------------------- |
| Introduction | text       |                              |
| image        | string     |                              |
| personal     | references | null:false                   |
| user_id      | references | null:false, foregin_key:true |

### Association
- has_many :skill, through: :slill_users


## skill_usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| skill  | references | null: false                    |

### Association
- belongs_to :skill
- belongs_to :user

## personal_usersテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| personal | references | null: false                    |

### Association
- belongs_to :personal
- belongs_to :user