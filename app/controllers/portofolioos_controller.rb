class PortofolioosController < ApplicationController
  before_action :set_portofolioo_item, only: [:edit, :update, :show, :destroy]
  layout 'portofolioo'
  def index
    @portofolioos_items = Portofolioo.all
  end
  
  def angular
     @angulars = Portofolioo.angular
  end

 
  
  def new
    @portofolioos_items = Portofolioo.new
    3.times {@portofolioos_items.technologies.build}
  end
  
   def create
    @portofolioos_items = Portofolioo.new(portofolioo_params)

    respond_to do |format|
      if @portofolioos_items.save
        format.html { redirect_to portofolioos_path, notice: 'Portofolioo was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def edit

  end
  
  def update
    respond_to do |format|
      if @portofolioos_items.update(portofolioo_params)

        format.html { redirect_to portofolioos_path, notice: 'Article was successfully updated.' }
      else
        format.html { render :edit }
      end
  end
end

 def show

 end
 
 def destroy
    @portofolioos_items.destroy
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
 
 def set_portofolioo_item
     @portofolioos_items = Portofolioo.find(params[:id])
 end
 
end
