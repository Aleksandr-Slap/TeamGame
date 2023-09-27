class Team < ApplicationRecord
  validates :title, presence: true

  has_many :players
  has_many :statistics
  has_many :matches, through: :statistics
end
