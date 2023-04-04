class AddIndexToUsersUsername < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :username, name: "index_posts_on_username", unique: true
  end
end
