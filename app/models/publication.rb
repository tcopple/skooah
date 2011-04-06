=begin
  t.string :title, :null => false
  t.string :image_url #should this jsut be an id?
  t.int :author_id
=end

#duh
class Publication < ActiveRecord::Base
  has_one :author_profile
  
  has_many :comments, :class_name => "PublicationComment"

  has_many :publication_tags
  has_many :tags, :through => :publication_tags
end
