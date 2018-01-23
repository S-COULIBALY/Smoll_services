
module Services

  class Quotation

    UNITER_MAIN_OEUVRE = 5
    TAUXH = 10
    NB_H_JOUR = 8
    PU_KM = 1.5

    def initialize(distance, vol)
      @distance = distance
      @volume = volume
    end

    def cout_demenagement(distance, vol)
      (nb_demenageur(vol) * cout_demenageur_horraires) + cout_transport(distance)
    end

    def nb_demenageur(volume)
      volume / UNITER_MAIN_OEUVRE
    end

    def cout_demenageur_horraires
      TAUXH * NB_H_JOUR
    end

    def cout_transport(distance)
      distance * PU_KM
    end


    puts "Quel est la distance svp : "
    distance = gets.chomp.to_i
    puts "Volume en m2 : "
    vol = gets.chomp.to_i

    puts("-------------------")
    puts "Total : #{cout_demenagement(distance, vol)}"

  end

end
