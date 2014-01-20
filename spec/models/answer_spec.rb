require "spec_helper"

describe Answer do
  it { should validate_presence_of :content }

  it "should have #right with type of bool" do
    FactoryGirl.create(:answer).should be_valid
    FactoryGirl.create(:answer, right: true).should be_valid
    FactoryGirl.create(:answer, right: "this is string").should_not be_valid
  end

  it { should belong_to :question }
end
