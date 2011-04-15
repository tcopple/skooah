class CreateConversionMappings < ActiveRecord::Migration
  def self.up
    create_table :conversion_mappings do |t|
      t.integer :source_id
      t.integer :destination_id

      t.timestamps
    end
  end

  def self.down
    drop_table :conversion_mappings
  end
end
