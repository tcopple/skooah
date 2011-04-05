class CreatePublications < ActiveRecord::Migration
  def self.up
    create_table :publications do |t|
      t.string :title
      t.string :image_url #should this jsut be an id?
      t.integer :author_id

      t.timestamps
    end
  end

  def self.down
    drop_table :publications
  end
end
