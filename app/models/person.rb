class Person
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :position, type: String
  field :scores, type: String
end
