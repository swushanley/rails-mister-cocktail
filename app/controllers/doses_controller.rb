class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end
  def destroy
    @dose = Dose.find(@dose)
    @dose.delete
  end
end
