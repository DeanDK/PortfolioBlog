class PortofolioosController < ApplicationController
  
  def index
    @portofolios_items = Portofolioo.all
  end
end
