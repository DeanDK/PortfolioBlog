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
  
  def edit
    @portofolios_items = Portofolioo.find(params[:id])
  end
  
  def update
     @portofolios_items = Portofolioo.find(params[:id])
    respond_to do |format|
      if @portofolios_items.update(params.require(:portofolioo).permit(:title, :subtitle, :body))

        format.html { redirect_to portofolioos_path, notice: 'Article was successfully updated.' }
      else
        format.html { render :edit }
      end
  end
end

 def show
    @portofolios_items = Portofolioo.find(params[:id])
 end
end
