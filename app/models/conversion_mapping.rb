class ConversionMapping < ActiveRecord::Base
  belongs_to :source, :class_name => "PublicationType"
  belongs_to :destination, :class_name => "PublicationType"
end
