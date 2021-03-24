class AddAuthorRefToArticles < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :author, null: true, foreign_key: true
  end
end
