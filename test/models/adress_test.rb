require "test_helper"

class AdressTest < ActiveSupport::TestCase

    def setup
        #@address_from_fixtures = adresses(:one)
        @relocation = Relocation.new(relocation_type: :particular, date: DateTime.now, volume: 2.5, formula: 'confort')
        @relocation.save
    end

    def test_create_adress_departure
        adress_depart = Adress.new(street_number: 12,
                                    street_name: 'residence les taratres',
                                    postal_code: 92500,
                                    city: 'Rueil malmaison',
                                    details: 'Quartier résidentiel',
                                    adress_type: :departure,
                                    longitude: 9.99,
                                    lattitude: 9.99,
                                    complete_adress: '12 residence les taratres 92500 Rueil malmaison',
                                    relocation_id: @relocation.id)

        adress_depart.save!

        saved_adress = Adress.find_by(street_name: 'residence les taratres')

        assert_equal saved_adress.id, adress_depart.id
        assert_equal saved_adress.adress_type, 'departure'
        assert_kind_of Relocation, adress_depart.relocation
        assert_equal saved_adress.relocation, @relocation
    end

    #def test_fixtures
      #puts @address_from_fixtures
    #end

    def test_create_adress_arrival
        adress_arrival = Adress.new(street_number: 9,
                                    street_name: 'rue barbès',
                                    postal_code: 94200,
                                    city: 'Ivry sur seine',
                                    details: "proche du moulin d'ivry",
                                    adress_type: :arrival,
                                    longitude: 9.99,
                                    lattitude: 9.99,
                                    complete_adress: '9 rue barbès 94200 ivry sur seine',
                                    relocation_id: @relocation.id)

        adress_arrival.save!

        saved_adress = Adress.find_by(street_name: 'rue barbès')

        assert_equal saved_adress.id, adress_arrival.id
        assert_equal saved_adress.adress_type, 'arrival'
        assert_kind_of Relocation, adress_arrival.relocation
        assert_equal saved_adress.relocation, @relocation
    end
end



