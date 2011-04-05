=begin
  t.int :publication_id, :null => false
  t.int :tag_id, :null => false
  t.timestamps
=end

#join relation for the many to many relation between publications and tags
class PublicationTag < ActiveRecord::Base
  validates :publication_id, :presence => true 
  validates :tag_id, :presence => true

  belongs_to :tag
  belongs_to :publication
end
