class PotlucksController < ApplicationController
  before_action :set_potluck, only: [:show, :destroy]

  def index
    @potlucks = 
      Potluck.left_joins(:stuffs).where(user: current_user)
      .or(Potluck.left_joins(:stuffs).where(stuffs: {user: current_user}))
      .distinct
  end

  def show

  end

  def create
    @potluck = Potluck.new(potluck_params)
    @potluck.user = current_user
    if @potluck.save
      redirect_to potluck_path(@potluck)
    else
      render 'index'
    end
  end

  def destroy
    @potluck.destroy
    redirect_to potlucks_path
  end

  private

  def set_potluck
    @potluck = Potluck.find(params[:id])
  end

  def potluck_params
    params.require(:potluck).permit(:name, :date, :location, :apt_number )
  end
end
