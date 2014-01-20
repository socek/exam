require "spec_helper"

describe Quiz do
  it { should validate_presence_of :title }
  it { should have_many :questions }
end
