class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :user_img_url
      t.text :bio
      t.string :phone
      t.string :location

      t.timestamps
    end
  end
end
