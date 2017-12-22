require 'rails_helper'

RSpec.describe "relocations/edit", type: :view do
  before(:each) do
    @relocation = assign(:relocation, Relocation.create!(
      :volume => 1.5
    ))
  end

  it "renders the edit relocation form" do
    render

    assert_select "form[action=?][method=?]", relocation_path(@relocation), "post" do

      assert_select "input[name=?]", "relocation[volume]"
    end
  end
end
