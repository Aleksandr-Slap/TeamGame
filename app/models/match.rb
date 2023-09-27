class Match < ApplicationRecord
  validates :title, :team1, :team2, presence: true

  has_many :statistics
  has_many :players, through: :statistics
  has_many :teams, through: :statistics
end
