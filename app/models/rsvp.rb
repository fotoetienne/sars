class Rsvp

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :response, :name2, :response2, :name3, :response3, :name4, :response4, :name5, :response5, :name6, :response6, :comments

  validates :name, :response, :presence => true
  #validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
