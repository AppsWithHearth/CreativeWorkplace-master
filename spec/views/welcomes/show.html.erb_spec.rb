require 'rails_helper'

RSpec.describe "welcomes/show", type: :view do
  before(:each) do
    @welcome = assign(:welcome, Welcome.create!(
      :body_text => "Body Text",
      :header_text => "Header Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body Text/)
    expect(rendered).to match(/Header Text/)
  end
end
