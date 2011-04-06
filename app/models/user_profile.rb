=begin
  t.string :first_name
  t.string :last_name
  t.string :website
  t.integer :user_id
=end

class UserProfile < ActiveRecord::Base
  belongs_to :user
end
