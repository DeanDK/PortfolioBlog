class PortofolioosController < ApplicationController
  layout 'portofolioo'
  def index
    @portofolios_items = Portofolioo.all
  end
  
  def angular
     @angulars = Portofolioo.angular
  end

 
  
  def new
    @portofolios_items = Portofolioo.new
    3.times {@portofolios_items.technologies.build}
  end
  
   def create
    @portofolios_items = Portofolioo.new(portofolioo_params)

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
      if @portofolios_items.update(portofolioo_params)

        format.html { redirect_to portofolioos_path, notice: 'Article was successfully updated.' }
      else
        format.html { render :edit }
      end
  end
end

 def show
    @portofolios_items = Portofolioo.find(params[:id])
 end
 
 def destroy
    @portofolios_items = Portofolioo.find(params[:id])
    @portofolios_items.destroy
    respond_to do |format|
      format.html { redirect_to portofolioos_url, notice: 'Article was successfully destroyed ' }
    end
 end
 
 private
 
 def portofolioo_params
   params.require(:portofolioo).permit(:title, 
                                      :subtitle, 
                                       :body, technologies_attributes: [:name])
 end
end
