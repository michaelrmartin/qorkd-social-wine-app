class MergeUserProfilesIntoUser < ActiveRecord::Migration[7.0]
  def change
    # Add columns to users table
    add_column :users, :name, :string
    add_column :users, :user_img_url, :string
    add_column :users, :bio, :text
    add_column :users, :phone, :string
    add_column :users, :location, :string

    # Copy data from user_profiles to users
    User.all.each do |user|
      profile = user.user_profile

      user.update!(
        name: profile.name,
        user_img_url: profile.user_img_url,
        bio: profile.bio,
        phone: profile.phone,
        location: profile.location
      )
    end

    # Remove user_profile table and foreign key
    remove_foreign_key :user_profiles, :users
    drop_table :user_profiles
  end
end
