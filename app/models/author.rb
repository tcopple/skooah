class Author < ActiveRecord::Base
  belongs_to :user
  has_many :publications
  has_many :comments, :through => :publications
end

public
def tags
  self.publications.collect { |p| p.tags }.flatten.uniq 
end