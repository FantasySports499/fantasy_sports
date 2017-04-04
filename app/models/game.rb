class Game
  include Mongoid::Document

  field :inviter, type: String
  field :invited, type: String
end
