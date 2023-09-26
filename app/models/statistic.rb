class Statistic < ApplicationRecord
  belongs_to :player
  belongs_to :team 
  belongs_to :match
end
