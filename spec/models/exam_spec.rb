require "spec_helper"

describe Exam do
  it { should validate_presence_of :title }
  it { should have_many :options }
end
