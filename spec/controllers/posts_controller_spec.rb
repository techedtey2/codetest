require 'spec_helper'
require "rails_helper"
describe PostsController do
  before(:each) do
    @user = User.create(username: "test", email: "test@example.com", password: "password")
    sign_in @user
  end

  describe "GET index" do
    it "populates an array of posts" do
      type = Type.create(name: "SampleType")

      post = @user.posts.create(type: type, title: "Test Blog", description: "Testing Description")
      get :index
      assigns(:posts).should eq([post])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
