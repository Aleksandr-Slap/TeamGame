require 'rails_helper'

RSpec.describe Statistic, type: :model do
    it { should belong_to(:player) }
    it { should belong_to(:team) }
    it { should belong_to(:match) }

    it { should validate_presence_of :player_id }
    it { should validate_presence_of :team_id }
    it { should validate_presence_of :match_id }
    it { should validate_presence_of :accuracy }
    it { should validate_presence_of :distance }
end