require 'rails_helper'

RSpec.describe Player, type: :model do
  it { should have_many(:matches).through(:statistics) }
  it { should have_many(:statistics) }
  it { should belong_to(:team).optional }

  it { should validate_presence_of :name} 
end