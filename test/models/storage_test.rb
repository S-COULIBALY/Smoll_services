require "test_helper"

#describe Storage do
#  let(:storage) { Storage.new }

#  it "must be valid" do
#    value(storage).must_be :valid?
#  end
#end

class StorageTest < ActiveSupport::TestCase

    def setup
     @storage = Storage.new(date: Date.new,
                            weight: 25.40,
                            volume: 50,
                            distance: 300,
                            carrying_distance: 100,
                            worker: 4,
                            amount: 1200
                            )
     #@storage.save!
    end

    test "@storage with all attributes setted should be valid" do
    assert @storage.valid?
    end

    test "date should be présent " do
       @storage.date = " "
       #@storage.weight = " "
       #@storage.volume = " "
      assert_not @storage.valid?
    end

    test "weight should be présent " do
       @storage.weight = " "
      assert_not @storage.valid?
    end

    test "volume should be présent " do
       @storage.volume = " "
      assert_not @storage.valid?
    end


end
