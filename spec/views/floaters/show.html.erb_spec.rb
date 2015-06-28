require 'rails_helper'

RSpec.describe "floaters/show", type: :view do
  before(:each) do
    @floater = assign(:floater, Floater.create!(
      :floater_type => nil,
      :durability => 1,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
  end
end
