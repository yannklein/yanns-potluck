class StuffsController < ApplicationController
  before_action :set_potluck, only: [:create]
  def create
    @stuff = Stuff.new(stuff_params)
    @stuff.potluck = @potluck
    if @stuff.save
      redirect_to potluck_path(@potluck)
    else
      render 'potluck/show'
    end
  end

  private

  def set_potluck
    @potluck = Potluck.find(params[:potluck_id])
  end

  def stuff_params
    params.require(:stuff).permit(:name, :emoji, :price, :quantity, :user_id, )
  end
end
