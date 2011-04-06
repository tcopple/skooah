class CreatePublicationComments < ActiveRecord::Migration
  def self.up
    create_table :publication_comments do |t|
      t.integer :commenter_id
      t.text :comment
      t.integer :publication_id

      t.timestamps
    end
  end

  def self.down
    drop_table :publication_comments
  end
end
