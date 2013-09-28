require 'spec_helper'

describe User do 
  let(:user) {User.new(email: "example@gmail.com", password: "foobar", password_confirmation: "foobar") }
  it { should validate_presence_of :email }
  it "has a unique email" do 
    user.save
    expect(user).to validate_uniqueness_of :email
  end
  it { should have_secure_password }
end 