class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :study_time
      t.string :study_field
      t.text :study_summary
      t.text :itnews_opinion
      t.string :consultation
      t.string :sns_links

      t.timestamps
    end
  end
end
