require 'rails_helper'

RSpec.describe "relocations/index", type: :view do
  before(:each) do
    assign(:relocations, [
      Relocation.create!(
        :volume => 2.5
      ),
      Relocation.create!(
        :volume => 2.5
      )
    ])
  end

  it "renders a list of relocations" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
