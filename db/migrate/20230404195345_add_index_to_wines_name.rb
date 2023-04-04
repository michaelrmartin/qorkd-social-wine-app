class AddIndexToWinesName < ActiveRecord::Migration[7.0]
  def change
    add_index :wines, :name, name: "index_wines_on_name", unique: true
  end
end
