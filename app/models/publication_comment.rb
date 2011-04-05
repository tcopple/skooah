=begin
  t.int :commenter_id, :null => false
  t.text :comment, :null => false
  t.int :publication_id, :null => false
  t.timestamps
=end

#Class to keep track of comments on a specific publication.
class PublicationComment < ActiveRecord::Base
  belongs_to :publication
end
