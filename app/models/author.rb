=begin
  t.string :pen_name, :null => false
  t.int :user_id
  t.timestamps
=end

class Author < ActiveRecord::Base
  has_many :publications
  has_many :comments, :through => :publications
end

public
def tags
  self.publications.collect { |p| p.tags }.flatten.uniq 
end

