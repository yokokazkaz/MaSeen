# テーブル設計

## user テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |

### Association

- has_many :machines
- has_many :reservations

## machine テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| detail           | text       | null: false                    |
| in_use           | boolean    |                                |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one    :reservation


## reservation テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| machine | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :reservation
