=begin
  t.string :pen_name, :null => false
  t.int :user_id
  t.timestamps
=end

class AuthorProfile < ActiveRecord::Base
  belongs_to :user
  has_many :publications
  has_many :comments, :through => :publications
end

public
def tags
  self.publications.collect { |p| p.tags }.flatten.uniq 
end

#def profile
  #self.user.profile
#end
