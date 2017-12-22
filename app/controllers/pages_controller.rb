class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home

  end

#---- Help ----------
  def how_to_pay
  end

  def lacalisation
  end

  def Comment_demenager
  end

  def faq
  end

#------ Smoll --------------------
  def about
  end

  def services
  end

  def contact
  end

  def divers
  end

  def rss
  end


#---- SÉCURITÉ & CONFIDENTIALITÉ -----
  def legal_notice
  end

  def privacy_policy
  end

  def refund_policy
  end

  def informations
  end


#---- PAYMENT --------

  def payment
  end
end


=begin

  AIDE
   Comment faire vos regléments
   Notre localisation
   Comment demenager
   FAQ


  SMOLL
   A propos
   Nos services
   Contact
   Divers
   RSS

  SÉCURITÉ & CONFIDENTIALITÉ
   Mentions légales
   Politique de confidentialité
   Politique de remboursement
   Informations diverses

  PAYMENT
  Vos conditions de paiement

=end

