class CreatePublicationTags < ActiveRecord::Migration
  def self.up
    create_table :publication_tags do |t|
      t.integer :publication_id, :null => false
      t.integer :tag_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :publication_tags
  end
end
