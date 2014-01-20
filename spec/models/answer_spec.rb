require "spec_helper"

describe Answer do
  it { should validate_presence_of :content }

  it "should have #right with type of bool" do
    FactoryGirl.build(:answer).should be_valid
    FactoryGirl.build(:answer, right: true).should be_valid
    FactoryGirl.build(:answer, right: nil).should_not be_valid
  end

  it { should belong_to :question }
end
