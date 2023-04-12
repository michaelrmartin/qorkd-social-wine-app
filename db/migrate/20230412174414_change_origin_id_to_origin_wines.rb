class ChangeOriginIdToOriginWines < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :origin, :string
    remove_column :wines, :origin_id, :integer
  end
end
