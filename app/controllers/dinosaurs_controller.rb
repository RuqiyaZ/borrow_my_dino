class DinosaursController < ApplicationController
  before_action :set_dinosaur, only: ['show']

  def new
    @dinosaurs = Dinosaur.new
  end

  def index
    @dinosaur = Dinosaur.all
  end

  def show
  end

  # def edit
  # end

  # def update
  #   @dinosaur.update(dinosaur_params)
  #   flash[notice:] = "Booking was successfully updated."
  #   redirect_to dinosaurs_path(@dinosaur)
  # end

  # def destroy
  #   @dinosaur.destroy
  #   redirect_to dinosaurs_path(@dinosaur)
  # end

  private

  def set_dinosaur
    @dinosaur = Dinosaur.find(params[:id])
  end

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :description, :age, :diet, :origin)
  end
end
