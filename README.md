# テーブル設計

## users テーブル

| Column                 | Type   | Options                   |
| ---------------------- | ------ | --------------------------|
| name                   | string | null: false               |
| nickname               | string | null: false               |
| age                    | string | null: false               |
| birth_day              | date   | null: false               |
| type                   | string | null: false               |
| birth_place            | string | null: false               |
| raise                  | string | null: false               |
| weight                 | string | null: false               |
| charm_point            | string | null: false               |
| personality            | string | null: false               |
| strong_point           | string | null: false     

## association

  has_many :diaries
  has_many :best_shots
  has_many :diary_comments
  has_many :best_shot_comments

## diaries テーブル

| Column             | Type            | Options                         |
| ------------------ | --------------- | ------------------------------- |
| user               | references      | null: false, foreign_key: true  |
| title              | string          | null: false                     |
| text               | text            | null: false                     |
| date               | datetime        | null: false                     |

## association

belongs_to :user
has_many :diary_comments

## diary_comments テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| diary      | references | null: false, foreign_key: true |
| content    | string     | null: false                    |
 
 ## association

belongs_to :user
belongs_to :diary

## best_shots テーブル

| Column             | Type            |Options                         |
| ------------------ | --------------- |------------------------------- |
| title              | string          | null: false                    |
| user               | references      | null: false, foreign_key: true |
 
## association

belongs_to :user

## best_shot_comments テーブル

| Column             | Type            |Options                         |
| ------------------ | --------------- |------------------------------- |
| comment            | string          | null: false                    |
| best_shot          | references      | null: false, foreign_key: true |
| user               | references      | null: false, foreign_key: true |
 
## association

belongs_to :best_shot