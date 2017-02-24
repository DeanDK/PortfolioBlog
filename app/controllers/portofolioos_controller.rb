class PortofolioosController < ApplicationController
  
  def index
    @portofolios_items = Portofolioo.all
  end
  
  def new
    @portofolios_items = Portofolioo.new
  end
  
   def create
    @portofolios_items = Portofolioo.new(params.require(:portofolioo).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portofolios_items.save
        format.html { redirect_to portofolioos_path, notice: 'Portofolioo was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
end
