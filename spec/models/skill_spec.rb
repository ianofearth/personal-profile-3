require 'rails_helper'

describe Skills do
  it { should validate_presence_of :name}
  it { should validate_presence_of :description}
  it { should validate_presence_of :number}
end
