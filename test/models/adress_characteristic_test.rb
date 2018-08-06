require "test_helper"

describe AdressCharacteristic do
  let(:adress_characteristic) { AdressCharacteristic.first }

  it "must be valid" do
    value(adress_characteristic).must_be :valid?
  end
end
