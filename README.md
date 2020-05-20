## tag_usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| tag    | references | null: false                    |

### Association
- belongs_to :tag
- belongs_to :user

## usersテーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string |             |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :tags, through: :tag_users
- has_many :tag_users
- has_many :profiles

## profilesテーブル

| Column       | Type       | Options                      |
| ------------ | ---------- | ---------------------------- |
| Introduction | text       |                              |
| image        | string     |                              |
| tag          | references | null:false                   |
| user         | references | null:false, foregin_key:true |

### Association
- belongs_to :tag
- belongs_to :user

## tagsテーブル

| Column | Type       | Options    |
| ------ | ---------- | ---------- |
| name   | string     | null:false |
| user   | references | null:false |

### Association
- has_many :tag_users
- has_many :users, through: :tag_users
- has_many :profiles
