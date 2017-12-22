require 'rails_helper'

RSpec.describe "relocations/new", type: :view do
  before(:each) do
    assign(:relocation, Relocation.new(
      :volume => 1.5
    ))
  end

  it "renders new relocation form" do
    render

    assert_select "form[action=?][method=?]", relocations_path, "post" do

      assert_select "input[name=?]", "relocation[volume]"
    end
  end
end
