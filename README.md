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
# Environment construction procedure manual

- 1.Open your PC browser with Google chrome
- 2.Access heroku_url(https://studyform.herokuapp.com/)
- 3.Sing_up
  - admin user
    - email:test@gmail.com
    - password:testtest
    - name:Mike
  - students1
    - email:test2@gmail.com
    - password:testtest2
    - name:Tarou
  - students2
    - email:test3@gmail.com
    - password:testtest3
    - name:Hanako
- 4.How to use
  - Please refer to the attached documnet(Transition diagram).
    - `https://github.com/hayatosann/studyform/issues/11`
      - [StudyForm.pdf](https://github.com/hayatosann/studyform/files/3693834/StudyForm.pdf)
    

# DB　design
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

## users table

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

# Afterword
I made this application in a fixed time(12 hours).At first I planed what to make & how to make.I supposed I work for one company which provide users teaching programming skills.I have to bring profit,and increase customer satisfaction.I focused on the relation between teachers and users,and increasement user's skill. I thought they leads to increase customer's(user's) satisfaction.
To make this application,I use Ruby on Rails.I reviewed minimum implemation tasks in order to make this application.
 - Requirementation(function)
  - form
  - comments
  - admin
  - students (users)
  - mobile responsive
  
I was able to manage to make above minimum implementations in a limitted time.but I can't use javascript.I'm sorry about this.


