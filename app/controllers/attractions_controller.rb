class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find_by(params[:id])
  end

  private
  def attraction_params
    params.reqiure(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
  end
end
