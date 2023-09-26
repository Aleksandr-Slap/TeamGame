class Player < ApplicationRecord
  has_many :statistics
  has_many :matches, through: :statistics
  belongs_to :team, optional: true

  def assign_distance(match_id, distance)
    Statistic.where(match_id: match_id, player_id: self.id).update(distance: distance)
  end

  def assign_accuracy(match_id, accuracy)
    Statistic.where(match_id: match_id, player_id: self.id).update(accuracy: accuracy)
  end 
end
