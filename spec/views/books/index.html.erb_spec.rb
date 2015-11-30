require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :author => "Author",
        :price => 1.5,
        :description => "MyText",
        :publisher => "Publisher",
        :picture => "Picture",
        :isbn => "Isbn"
      ),
      Book.create!(
        :title => "Title",
        :author => "Author",
        :price => 1.5,
        :description => "MyText",
        :publisher => "Publisher",
        :picture => "Picture",
        :isbn => "Isbn"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
  end
end
