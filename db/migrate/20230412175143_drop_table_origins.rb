class DropTableOrigins < ActiveRecord::Migration[7.0]
  def change
    drop_table :origins
  end
end
