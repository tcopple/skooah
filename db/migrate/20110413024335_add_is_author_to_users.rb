class AddIsAuthorToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :is_author, :bool
  end

  def self.down
    remove_column :users, :is_author
  end
end
