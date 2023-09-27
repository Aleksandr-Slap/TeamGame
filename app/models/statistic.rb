class Statistic < ApplicationRecord
  validates :player_id, :team_id, :match_id, :accuracy, :distance, presence: true

  belongs_to :player
  belongs_to :team 
  belongs_to :match
end
