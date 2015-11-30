require 'rails_helper'

RSpec.describe "welcomes/new", type: :view do
  before(:each) do
    assign(:welcome, Welcome.new(
      :body_text => "MyString",
      :header_text => "MyString"
    ))
  end

  it "renders new welcome form" do
    render

    assert_select "form[action=?][method=?]", welcomes_path, "post" do

      assert_select "input#welcome_body_text[name=?]", "welcome[body_text]"

      assert_select "input#welcome_header_text[name=?]", "welcome[header_text]"
    end
  end
end
