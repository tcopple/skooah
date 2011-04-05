class NoSpacesValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << "no spaces allowed in tag name" if value[/\s/].nil?
  end
end

=begin
  t.string :text, :null => false
  t.timestamps
=end

#model to keep track of all tags
class Tag < ActiveRecord::Base
  validates :text, :no_spaces => true

  has_many :publication_tags
  has_many :publications, :through => :publication_tags
end
