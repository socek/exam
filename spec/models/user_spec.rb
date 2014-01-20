require "spec_helper"

describe User do
  it { should validate_presence_of :email                }
  it { should validate_presence_of :username             }
  it { should validate_presence_of(:password).on :create }

  it "should validate confirmation of password" do
    User.new(email: "example@mail.com", username: "name", password: "secret", password_confirmation: "different").valid?.should be_false
  end
end
