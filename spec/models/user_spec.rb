require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    it "is not valid without a username" do
      user = User.new(username: nil, email: "test@blogger.com", password: "password")
      expect(user).to_not be_valid
    end

    it "is not valid without a email" do
      user = User.new(username: "blogger", email: nil, password: "password")
      expect(user).to_not be_valid
    end

    it "is not valid without a password" do
      user = User.new(username: "blogger", email: "test@blogger.com", password: nil)
      expect(user).to_not be_valid
    end

    it "is valid with valid attributes" do
      user = User.create!(username: "blogger", email: "test@blogger.com", password: "password")
    end
  end
end
