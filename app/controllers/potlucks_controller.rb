class PotlucksController < ApplicationController
  before_action :set_potluck, only: [:show]

  def index
    @potlucks = Potluck.all
  end

  def show
    
  end

  def create!
  end

  private

  def set_potluck
    @potluck = Potluck.find(params[:id])
  end
end
