<<<<<<< Updated upstream
## tags_usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| tag    | references | null: false                    |

### Association
- belongs_to :tag
- belongs_to :user

=======
>>>>>>> Stashed changes
## usersテーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string |             |
| email    | string | null: false |
| password | string | null: false |

### Association
<<<<<<< Updated upstream
- has_many :tags, through: :tags_users
- has_many :tags_users
- has_many :profiles
=======
- has_many :skill, through: :slill_users
- has_many :personal, through: :personal_users

## skillsテーブル

| Column  | Type       | Options    |
| ------- | ---------- | ---------- |
| user_id | references | null:false |
| name    | string     | null:false |

### Association
- has_many :personal, through: :personal_users

## personalsテーブル

| Column   | Type       | Options                      |
| -------- | ---------- | ---------------------------- |
| user_id  | references | null:false, foregin_key:true |
| post     | text       |                              |
| image    | string     |                              |
| personal | references | null:false                   |

### Association
- has_many :skill, through: :slill_users

>>>>>>> Stashed changes

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
<<<<<<< Updated upstream
- has_many :tags_users
- has_many :users, through: :tags_users
- has_many :profiles
=======
- belongs_to :personal
- belongs_to :user
>>>>>>> Stashed changes
