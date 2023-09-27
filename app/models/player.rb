class Player < ApplicationRecord
  validates :name, presence: true

  has_many :statistics
  has_many :matches, through: :statistics
  belongs_to :team, optional: true
  
  def self.snipers
    Statistic.order(accuracy: :desc).limit(5)
  end

  def self.marathon_runner
    Statistic.order(distance: :desc).limit(5)
  end  
  
  def snipers_in_team
    self.team.statistics.order(accuracy: :desc).limit(5)
  end

  def marathon_runners_in_team
    self.team.statistics.order(distance: :desc).limit(5)
  end

  def check_accuracy
    self.team.statistics.where(player_id: self.id).where("accuracy >= ?", 70).last(5)
  end

  def check_distance
    self.team.statistics.where(player_id: self.id).where("distance >= ?", 10).last(5)
  end

  def assign_distance(match_id, distance)
    Statistic.where(match_id: match_id, player_id: self.id).update!(distance: distance)
  end

  def assign_accuracy(match_id, accuracy)
    Statistic.where(match_id: match_id, player_id: self.id).update!(accuracy: accuracy)
  end 
end