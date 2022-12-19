class CreateOrigins < ActiveRecord::Migration[7.0]
  def change
    create_table :origins do |t|
      t.string :country

      t.timestamps
    end
  end
end
