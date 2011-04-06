class CreateAuthorProfiles < ActiveRecord::Migration
  def self.up
    create_table :author_profiles do |t|
      t.string :pen_name
      t.text :biography
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :author_profiles
  end
end
