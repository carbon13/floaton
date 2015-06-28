require 'rails_helper'

RSpec.describe "floaters/new", type: :view do
  before(:each) do
    assign(:floater, Floater.new(
      :floater_type => nil,
      :durability => 1,
      :active => false
    ))
  end

  it "renders new floater form" do
    render

    assert_select "form[action=?][method=?]", floaters_path, "post" do

      assert_select "input#floater_floater_type_id[name=?]", "floater[floater_type_id]"

      assert_select "input#floater_durability[name=?]", "floater[durability]"

      assert_select "input#floater_active[name=?]", "floater[active]"
    end
  end
end
