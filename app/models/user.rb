class User < ActiveRecord::Base
  has_one :user_profile
  has_one :author_profile
end
