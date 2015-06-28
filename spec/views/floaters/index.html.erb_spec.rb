require 'rails_helper'

RSpec.describe "floaters/index", type: :view do
  before(:each) do
    assign(:floaters, [
      Floater.create!(
        :floater_type => nil,
        :durability => 1,
        :active => false
      ),
      Floater.create!(
        :floater_type => nil,
        :durability => 1,
        :active => false
      )
    ])
  end

  it "renders a list of floaters" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
