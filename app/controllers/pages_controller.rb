class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :bedrijven, :investeerders, :over_CFOhulp]

  def home
  end

  def bedrijven
  end

   def investeerders
  end

  def over_CFOhulp
  end
end
