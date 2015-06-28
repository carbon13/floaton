require 'rails_helper'

RSpec.describe "floaters/edit", type: :view do
  before(:each) do
    @floater = assign(:floater, Floater.create!(
      :floater_type => nil,
      :durability => 1,
      :active => false
    ))
  end

  it "renders the edit floater form" do
    render

    assert_select "form[action=?][method=?]", floater_path(@floater), "post" do

      assert_select "input#floater_floater_type_id[name=?]", "floater[floater_type_id]"

      assert_select "input#floater_durability[name=?]", "floater[durability]"

      assert_select "input#floater_active[name=?]", "floater[active]"
    end
  end
end
