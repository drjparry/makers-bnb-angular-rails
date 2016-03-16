class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def create

    @space = Space.create(space_params)
    redirect_to '/spaces'
  end

  def space_params
    params.require(:space).permit(:name, :price, :availability, :location, :size, :property_type)
  end

end

