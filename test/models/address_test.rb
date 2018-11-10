require "test_helper"

class AddressTest < ActiveSupport::TestCase

def setup
  @address = Address.new(street_number: 12,
                          street_name: "Résidence les taratres",
                          zip_code: 92500,
                          city: "Rueil Malmaison",
                          details: "un gros meuble très encombrant",
                          address_type: 1,
                          longitude: 10000,
                          lattitude: 30000,
                          complete_address: "12 Résidence les taratres 92500 Rueil Malmaison",
                          carrying_distance: 288,
                          floor_number: 5,
                          elevator: false,
                          elevator_capacity: 6,
                          furniture_elevator: true
                        )
  #@address.save!
end

  test "address with all attributes setting should be valid" do
  assert @address.valid?
  end

  test "street_number, street_name, zip_code, city, :address_type, complete_address, should be present" do
    @address.street_number= "   "
    @address.street_name= "   "
    @address.zip_code= "   "
    @address.city= "   "
    @address.address_type= "   "
    @address.complete_address= "   "
   p @address
   p @address.errors.full_messages
    p assert_not @address.valid?
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
   #address.errors.full_messages
   assert address.errors[:street_number].any?
   assert address.errors[:street_name].any?
   assert address.errors[:zip_code].any?
   assert address.errors[:city].any?
   assert address.errors[:address_type].any?
   assert address.errors[:complete_address].any?
   assert address.errors[:carrying_distance].any?
   assert address.errors[:floor_number].any?
   assert address.errors[:elevator].any?
   assert address.errors[:elevator_capacity].any?
   assert address.errors[:furniture_elevator].any
end

test "@address should be persisted ]" do
     @address.save!
     saved_adress= Address.find_by(city: "Rueil Malmaison")
     assert_equal saved_adress.id, @address.id
     assert_equal saved_adress.address_type, 'departure'
  end

end

