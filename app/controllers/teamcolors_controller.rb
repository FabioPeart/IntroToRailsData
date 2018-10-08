class TeamcolorsController < ApplicationController
  def index
    @teamcolors = Teamcolor.all
  end

  def show
     @teamcolor = Teamcolor.find(params[:id])
  end
end
