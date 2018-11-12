require "test_helper"

class AddressTest < ActiveSupport::TestCase

def setup
  @address = Address.new(street_number: 12,
                          street_name: "Résidence les taratres",
                          zip_code: 92500,
                          city: "Rueil Malmaison",
                          details: "un gros meuble très encombrant",
                          address_type: "arrival",
                          longitude: 10000,
                          lattitude: 30000,
                          complete_address: "12 Résidence les taratres 92500 Rueil Malmaison",
                          carrying_distance: 288,
                          floor_number: 5,
                          elevator: false,
                          elevator_capacity: 6,
                          furniture_elevator: false
                        )
end

  test "address with all attributes setting should be valid" do
  assert @address.valid?
  end

  test "address_type should be present" do
    @address.address_type = "   "
    assert_not @address.valid?
  end

  test "complete_address should be present" do
    @address.complete_address = "   "
    assert_not @address.valid?
  end

  test "carrying_distance should be present" do
    @address.carrying_distance = "   "
    assert_not @address.valid?
  end

  test "floor_number should be present" do
    @address.floor_number = "   "
    assert_not @address.valid?
  end

  test "elevator should be present" do
    @address.elevator = "   "
    assert_not @address.valid?
  end

  test "elevator_capacity should be present" do
    @address.elevator_capacity = "   "
    assert_not @address.valid?
  end

  test "furniture_elevator should be present" do
    @address.furniture_elevator = "   "
    assert_not @address.valid?
  end


 test "street_number should be an integer and greater_than_or_equal_to 1" do
   @address.street_number= -1
   assert_not @address.valid?
 end

test "address_type should be include in [departure, arrival ]" do
     @address.address_type= " "
     assert_not @address.valid?
 end

test "@address attributes must notbe empty" do
   address= Address.new()
   assert address.invalid?
   address.errors.full_messages

   assert address.errors[:address_type].any?
   assert address.errors[:complete_address].any?
   assert address.errors[:carrying_distance].any?
   assert address.errors[:floor_number].any?
   #assert address.errors[:elevator].any?
   assert address.errors[:elevator_capacity].any?
   #assert address.errors[:furniture_elevator].any?
end

test "@address should be persisted ]" do
     @address.save!
     saved_adress= Address.find_by(city: "Rueil Malmaison")
     assert_equal saved_adress.id, @address.id
     assert_equal saved_adress.address_type, 'arrival'
  end

end

