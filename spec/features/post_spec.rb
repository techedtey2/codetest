require "rails_helper"

feature "Post" do
  before(:each) do
    @user = User.create(username: "test", email: "test@example.com", password: "password")
    login_as(@user)
  end

  scenario "User creates a new post" do
    visit "/posts/new"

    select 'Academic', from: "post_type_id"
    fill_in "post_title", :with => "My Test Post"
    fill_in "post_description", :with => "My Test Description"
    click_button "Publish Post"

    expect(page).to have_text("Post was successfully created.")
  end

  scenario "User creates a new post with blank title" do
    visit "/posts/new"

    select 'Academic', from: "post_type_id"
    fill_in "post_title", :with => ""
    fill_in "post_description", :with => "My Test Description"
    click_button "Publish Post"

    expect(page).to have_text("Title can't be blank")
  end

  scenario "User creates a new post with blank description" do
    visit "/posts/new"

    select 'Academic', from: "post_type_id"
    fill_in "post_title", :with => "My Test Post"
    fill_in "post_description", :with => ""
    click_button "Publish Post"

    expect(page).to have_text("Description can't be blank")
  end
end