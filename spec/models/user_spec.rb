require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_confirmation_of :password }
  it { should have_many :posts }
  it { should have_many :skills }
  it { should have_many :references }
end
