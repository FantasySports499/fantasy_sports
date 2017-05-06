class Player
  include Mongoid::Document

    field :team, type: String
    field :name, type: String
    field :position, type: String
    field :touchdowns
    field :value
end
