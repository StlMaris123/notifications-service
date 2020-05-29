require 'rails_helper'

RSpec.describe "forums/index", type: :view do
  before(:each) do
    assign(:forums, [
      Forum.create!(
        user: nil,
        title: "Title",
        body: "MyText"
      ),
      Forum.create!(
        user: nil,
        title: "Title",
        body: "MyText"
      )
    ])
  end

  it "renders a list of forums" do
    render
    assert_select "h5", text: "Title".to_s, count: 2
    assert_select "p", text: "MyText".to_s, count: 2
  end
end
