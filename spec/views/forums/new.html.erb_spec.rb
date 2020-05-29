require 'rails_helper'

RSpec.describe "forums/new", type: :view do
  before(:each) do
    assign(:forum, Forum.new(
      user: nil,
      title: "MyString",
      body: "MyText"
    ))
  end

  it "renders new forum form" do
    render

    assert_select "form[action=?][method=?]", forums_path, "post" do

      assert_select "input[name=?]", "forum[title]"

      assert_select "textarea[name=?]", "forum[body]"
    end
  end
end
