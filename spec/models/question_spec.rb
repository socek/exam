require "spec_helper"

describe Question do
  it { should validate_presence_of :content }
  it { should belong_to :exam }
  it { should have_many :answers }
end
