# StudyForm
# URL
`https://studyform.herokuapp.com/` 
## Document
`https://github.com/hayatosann/studyform/issues/11`
## Development environment
- governing language:ruby(2.5.1p57)
- governing framework:ruby(5.2.3)
- brew:Homebrew 2.1.11
- database:mysql
Homebrew/homebrew-core (git revision 92c329; last commit 2019-10-04)
# Environment construction procedure manual(環境構築手順書)

- 1.Open your PC browser with Google chrome
- 2.heroku_url(plan to deplopy)
- 3.Sing_up
  - admin user
    - email:test@gmail.com
    - password:testtest
    - name:Mike
  - students
    - email:test2@gmail.com
    - password:testtest2
    - name:Tarou
- 4.How to use
Please refer to the attached documnet(Transition diagram).
  - `https://github.com/hayatosann/studyform/issues/11`

# DB
## ER diagram
[erd.pdf](https://github.com/hayatosann/studyform/files/3693831/erd.pdf)
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

