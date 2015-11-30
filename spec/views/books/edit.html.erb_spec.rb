require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :author => "MyString",
      :price => 1.5,
      :description => "MyText",
      :publisher => "MyString",
      :picture => "MyString",
      :isbn => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_price[name=?]", "book[price]"

      assert_select "textarea#book_description[name=?]", "book[description]"

      assert_select "input#book_publisher[name=?]", "book[publisher]"

      assert_select "input#book_picture[name=?]", "book[picture]"

      assert_select "input#book_isbn[name=?]", "book[isbn]"
    end
  end
end
