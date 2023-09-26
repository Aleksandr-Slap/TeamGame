class Player < ApplicationRecord
  has_many :statistics
  has_many :matches, through: :statistics
  belongs_to :team, optional: true
end
