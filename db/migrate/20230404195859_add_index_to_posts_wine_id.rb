class AddIndexToPostsWineId < ActiveRecord::Migration[7.0]
  def change
    add_index :posts, :wine_id, name: "index_posts_on_wine_id"
  end
end
