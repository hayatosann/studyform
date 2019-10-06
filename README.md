# StudyForm
## Document
`https://github.com/hayatosann/studyform/issues/11`
# Environment construction procedure manual(環境構築手順書)


# DB
## articles table

|Column|Type|Options|
|------|----|-------|
|study_time|string||
|study_field|string||
|study_summary|text||
|itnews_opinion|text||
|consultation|string||
|sns_links|string||
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :comments

## comments table

|Column|Type|Options|
|------|----|-------|
|comment|text||
|user_id|references|null: false, foreign_key: true|
|article_id|references|null: false, foreign_key: true|

### Association

- belongs_to :article
- belongs_to :user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string||
|password|string||
|password_confirmation|string||
|name|string||
|admin|integer||
  

### Association

- has_many :comments
- has_many :articles

