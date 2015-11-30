require 'rails_helper'

RSpec.describe "welcomes/edit", type: :view do
  before(:each) do
    @welcome = assign(:welcome, Welcome.create!(
      :body_text => "MyString",
      :header_text => "MyString"
    ))
  end

  it "renders the edit welcome form" do
    render

    assert_select "form[action=?][method=?]", welcome_path(@welcome), "post" do

      assert_select "input#welcome_body_text[name=?]", "welcome[body_text]"

      assert_select "input#welcome_header_text[name=?]", "welcome[header_text]"
    end
  end
end
