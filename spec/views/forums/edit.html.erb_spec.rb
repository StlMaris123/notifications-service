require 'rails_helper'

RSpec.describe "forums/edit", type: :view do
  before(:each) do
    @forum = assign(:forum, Forum.create!(
      user: nil,
      title: "MyString",
      body: "MyText"
    ))
  end

  it "renders the edit forum form" do
    render

    assert_select "form[action=?][method=?]", forum_path(@forum), "post" do

      assert_select "input[name=?]", "forum[user_id]"

      assert_select "input[name=?]", "forum[title]"

      assert_select "textarea[name=?]", "forum[body]"
    end
  end
end
