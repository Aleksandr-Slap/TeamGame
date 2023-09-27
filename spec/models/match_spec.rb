require 'rails_helper'

RSpec.describe Match, type: :model do
  it { should have_many(:players).through(:statistics) }
  it { should have_many(:teams).through(:statistics) }
  it { should have_many(:statistics) }

  it { should validate_presence_of :title}
  it { should validate_presence_of :team1}
  it { should validate_presence_of :team2}
end