require 'rails_helper'

RSpec.describe Post, type: :model do
  describe Post do
    
    it "is valid with valid attributes" do
      type = Type.new(name: "Computer Science")
      expect(Post.new(type: type, title: 'My First Blog', description: "Test description")).to be_valid
    end

    it "is not valid without a type" do
      post = Post.new(type: nil)
      expect(post).to_not be_valid
    end

    it "is not valid without a title" do
      post = Post.new(title: nil)
      expect(post).to_not be_valid
    end

    it "is not valid without a description" do
      post = Post.new(description: nil)
      expect(post).to_not be_valid
    end
  end
end
