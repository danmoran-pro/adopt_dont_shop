class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def shelter_and_pet_index
    @shelter = Shelter.find(params[:shelter_id])
  end

  def show
   @pet = Pet.find(params[:id])
 end
 
end
