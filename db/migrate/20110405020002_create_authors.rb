class CreateAuthors < ActiveRecord::Migration
  def self.up
    create_table :authors do |t|
      t.string :pen_name
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :authors
  end
end
