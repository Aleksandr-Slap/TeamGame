require 'rails_helper'

RSpec.describe Team, type: :model do
  it { should have_many(:players) }
  it { should have_many(:statistics) }
  it { should have_many(:matches).through(:statistics) }

  it { should validate_presence_of :title}
end