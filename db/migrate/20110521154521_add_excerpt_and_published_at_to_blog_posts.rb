class AddExcerptAndPublishedAtToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :excerpt, :string
    add_column :blog_posts, :published_at, :datetime
  end
end
