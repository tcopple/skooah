class User < ActiveRecord::Base
  has_one :author_profile
end
