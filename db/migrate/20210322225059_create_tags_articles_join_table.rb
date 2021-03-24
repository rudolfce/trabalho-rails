class CreateTagsArticlesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :articles, :tags do |t|
      t.index :tag_id
    end
  end
end
