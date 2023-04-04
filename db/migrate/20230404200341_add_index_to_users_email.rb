class AddIndexToUsersEmail < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :email, name: "index_posts_on_email", unique: true
  end
end
