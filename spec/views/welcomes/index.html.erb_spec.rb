require 'rails_helper'

RSpec.describe "welcomes/index", type: :view do
  before(:each) do
    assign(:welcomes, [
      Welcome.create!(
        :body_text => "Body Text",
        :header_text => "Header Text"
      ),
      Welcome.create!(
        :body_text => "Body Text",
        :header_text => "Header Text"
      )
    ])
  end

  it "renders a list of welcomes" do
    render
    assert_select "tr>td", :text => "Body Text".to_s, :count => 2
    assert_select "tr>td", :text => "Header Text".to_s, :count => 2
  end
end
