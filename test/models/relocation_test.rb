require "test_helper"

describe Relocation do
  let(:relocation) { Relocation.first }

  it "must be valid" do
    value(relocation).must_be :valid?
  end
end
