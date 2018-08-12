require "test_helper"

class AdressTest < ActiveSupport::TestCase

    def setup
        @relocation = Relocation.new(date: DateTime.now, volume: 2.5)
        @relocation.save
    end

    def test_create_new_adress
        adresse_depart = Adress.new(street_name: '9 Avenue Luc-Petain',
                                    postal_code: 90000, city: 'Belfort',
                                    adress_type: :departure,
                                    relocation_id: @relocation.id)
        adresse_depart.save!

        saved_adress = Adress.find_by(street_name: '9 Avenue Luc-Petain')

        assert_equal saved_adress.id, adresse_depart.id
        assert_equal saved_adress.adress_type, 'departure'
        assert_kind_of Relocation, adresse_depart.relocation
        assert_equal saved_adress.relocation, @relocation
    end
end


