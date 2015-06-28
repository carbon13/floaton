class CreateRssFeeds < ActiveRecord::Migration
  def change
    create_table :rss_feeds do |t|
      t.string :title
      t.string :link
      t.text :description
      t.string :author
      t.string :category
      t.text :comments
      t.text :enclosure
      t.string :guid
      t.datetime :pubdate
      t.string :source

      t.timestamps null: false
    end
  end
end
