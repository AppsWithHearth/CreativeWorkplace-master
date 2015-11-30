require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "Title",
      :author => "Author",
      :price => 1.5,
      :description => "MyText",
      :publisher => "Publisher",
      :picture => "Picture",
      :isbn => "Isbn"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Publisher/)
    expect(rendered).to match(/Picture/)
    expect(rendered).to match(/Isbn/)
  end
end
