class Game
  include Mongoid::Document

  field :gameType, type: String
  field :inviter, type: String
  field :erPicked, type: String
  field :erScore, type: String
  field :invited, type: String
  field :edPicked, type: String
  field :edScore, type: String
end
