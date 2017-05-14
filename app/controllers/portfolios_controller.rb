class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @portfolio_items = Portfolio.all
  end
  
  def show
    #@portfolio_item = Portfolio.find(params[:id])
    
  end
  
  def new
    @portfolio_item = Portfolio.new
  end
  
  def edit
    #@portfolio_item = Portfolio.find(params[:id])
  end
  
  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Portfolio item was created successfully." }
      else
        format.html { render :new }
      end
    end
    
  end
  
  def update
    #@portfolio_item = Portfolio.find(params[:id])
    
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html{ redirect_to portfolios_path, notice: "Portfolio item was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    #@portfolio_item = Portfolio.find(params[:id])
    
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: "Portfolio item deleted successfully." }
    end
  end
  
  
  
  
  
  
  
  
  private
  
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
    end
  
    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end
  
  
  
end
