require "spec_helper"

describe Question do
  it { should validate_presence_of :content }
  it { should belong_to :quiz }
  it { should have_many :answers }
end
