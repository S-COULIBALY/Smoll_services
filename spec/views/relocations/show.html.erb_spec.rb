require 'rails_helper'

RSpec.describe "relocations/show", type: :view do
  before(:each) do
    @relocation = assign(:relocation, Relocation.create!(
      :volume => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
  end
end
