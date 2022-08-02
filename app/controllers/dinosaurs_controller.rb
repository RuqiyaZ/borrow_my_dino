class DinosaursController < ApplicationController
  def show
    @dinosaur = Dinosaur.find(params[:id])
  end
end
