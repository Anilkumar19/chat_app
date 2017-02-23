require 'rails_helper'

RSpec.describe "snippets/index", type: :view do
  before(:each) do
    assign(:snippets, [
      Snippet.create!(
        :content => "Content",
        :description => "MyText",
        :visible => false
      ),
      Snippet.create!(
        :content => "Content",
        :description => "MyText",
        :visible => false
      )
    ])
  end

  it "renders a list of snippets" do
    render
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
