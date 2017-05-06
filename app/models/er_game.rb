class ErGame
  include Mongoid::Document

  field :name, type: String
  field :position, type: String
  field :team, type: String
  field :score

end
