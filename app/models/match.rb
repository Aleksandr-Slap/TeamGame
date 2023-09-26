class Match < ApplicationRecord
  has_many :statistics
  has_many :payers, through: :statistics
  has_many :teams, through: :statistics
end