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
                            )
     #@storage.save!
    end

    test "@storage with all attributes setted should be valid" do
    assert @storage.valid?
    end

    test "date should be présent " do
       @storage.date = " "
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

      test "volume should be an integer and greater_than_or_equal_to 1" do
        @storage.volume= -1
        assert_not @storage.valid?
      end

       test "weight should be an integer and greater_than_or_equal_to 1" do
        @storage.weight= -1
        assert_not @storage.valid?
      end

    test "@storage attributes must not be empty" do
       storage= Storage.new()
       assert storage.invalid?
       #storage.errors.full_messages

       assert storage.errors[:date].any?
       assert storage.errors[:weight].any?
       assert storage.errors[:volume].any?
    end

    test "@storage should be persisted ]" do
         @storage.save!
         saved_storage= Storage.find_by(weight: 25.40)
         assert_equal saved_storage.id, @storage.id
         assert_equal saved_storage.volume , 50
      end



end
