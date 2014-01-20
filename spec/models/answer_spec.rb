require "spec_helper"

describe Answer do
  it { should validate_presence_of :content }
  it { should ensure_inclusion_of(:right).in_array([true, false]) }

  it { should belong_to :question }
end
