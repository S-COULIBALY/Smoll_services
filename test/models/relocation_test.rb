require "test_helper"

# describe Relocation do
  # let(:relocation) { Relocation.first }

  # it "must be valid" do
    # value(relocation).must_be :valid?
  # end
# end

class RelocationTest < ActiveSupport::TestCase

    def setup

      @relocation = Relocation.new(relocation_type: 1,
                                  formula: 2,
                                  date: Date.new,
                                  volume: 42,
                                  distance: 200,
                                  worker: 5,
                                  amount: 15600
                                 )
     @relocation.save!
    end

  test "@relocation with all attributes setted should be valid" do
    assert @relocation.valid?
  end

  test "relocation_type, date, volume, formula, should be present" do
    @relocation.relocation_type = "   "
    @relocation.formula = "   "
    @relocation.date = "   "
    @relocation.volume = "   "
    @relocation.distance = " "
    @relocation.worker = " "
    @relocation.amount = " "
    assert @relocation.invalid?
  end

  test "volume should be an integer and greater_than_or_equal_to 5" do
    @relocation.volume = -1
    assert @relocation.invalid?
  end

  test "@relocation attributes must notbe empty after validations" do
    empty_relocation = Relocation.new()
    assert empty_relocation.invalid?
    #empty_relocation.errors.full_messages
    assert empty_relocation.errors[:relocation_type].any?
    assert empty_relocation.errors[:formula].any?
    assert empty_relocation.errors[:date].any?
    assert empty_relocation.errors[:volume].any?
    assert empty_relocation.errors[:distance].any?
    assert empty_relocation.errors[:worker].any?
    assert empty_relocation.errors[:amount].any?

  end

  test "@relocation should be persisted ]" do
       @relocation.save!
       saved_relocation = Relocation.find_by(formula: :economic)
       assert_equal saved_relocation.id, @relocation.id
       assert_equal saved_relocation.relocation_type, 'particular'
     # p "Found relocation type : #{saved_relocation.relocation_type} ---- #{@relocation.relocation_type}"
    end

 end
