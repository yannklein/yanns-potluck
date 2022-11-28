class PotlucksController < ApplicationController
  before_action :set_potluck, only: [:show]

  def index
    @potlucks = 
      Potluck.joins(:stuffs).where(user: current_user)
      .or(Potluck.joins(:stuffs).where(stuffs: {user: current_user}))
      .distinct
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
