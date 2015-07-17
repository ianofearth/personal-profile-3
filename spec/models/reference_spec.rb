require 'rails_helper'

describe Reference do
  it { should validate_presence_of :name }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :email }
  it { should validate_presence_of :body }


  it { should belong_to :user }
end
